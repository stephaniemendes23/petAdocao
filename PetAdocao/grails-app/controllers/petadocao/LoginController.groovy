package petadocao

class LoginController {

    def index() { }

    def logout() {
        session["user"] = null
        session['ehAdmin'] = null
        redirect(controller: "Animal", action: "index")
    }

    def login(Admin adminInstance) {
        boolean deuCerto = false
        if(Admin.findByLogin(adminInstance.login) != null) {
            if(Admin.findByLogin(adminInstance.login).senha.equals(adminInstance.senha)) {
                session['user'] = adminInstance.login
                session['ehAdmin'] = true

                deuCerto=true
            }
        } else if(Cliente.findByLogin(adminInstance.login) != null) {
            if(Cliente.findByLogin(adminInstance.login).senha.equals(adminInstance.senha)) {
                session['user'] = adminInstance.login
                session['ehAdmin'] = false

                deuCerto=true
            }
        }

        if(deuCerto)
            redirect(controller: "Animal", action: "index")
        else
            redirect(controller: "Login", action: "index")
    }
}
