package petadocao

class Admin {

    String login
    String senha

    static constraints = {
        login unique:true
        senha size:6..10
    }

}