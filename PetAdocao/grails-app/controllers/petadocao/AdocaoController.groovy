package petadocao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdocaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        boolean estaLogado = true
        if (session["user"] == null || (session['ehAdmin'] == null && !session['ehAdmim'])) {
            estaLogado = false
        }

        if (!estaLogado)
            redirect(controller: "Login", action: "index")
        else if (session['ehAdmin'])
            respond Adocao.list(params), model: [adocaoInstanceCount: Adocao.count(), login: session['user'], ehAdmin: session['ehAdmin']]
        else {
            def login = (String) session['user']
            respond Adocao.findAllByLoginCliente(login), model: [adocaoInstanceCount:  Adocao.findAllByLoginCliente(login).size(), login: session['user'], ehAdmin: session['ehAdmin']]

        }
    }

    def aprovar(Adocao adocaoInstance) {
        if (adocaoInstance == null) {
            notFound()
            return
        }
        def novaAdocao = Adocao.findByIdAnimalAndLoginCliente(adocaoInstance.idAnimal, adocaoInstance.loginCliente)
        novaAdocao.status = "Aprovado"
        novaAdocao.save flush:true

        redirect(controller: "Adocao", action: "index")

    }

    def rejeitar(Adocao adocaoInstance) {
        if (adocaoInstance == null) {
            notFound()
            return
        }

        def novaAdocao = Adocao.findByIdAnimalAndLoginCliente(adocaoInstance.idAnimal, adocaoInstance.loginCliente)
        novaAdocao.status = "Rejeitado"
        novaAdocao.save flush:true

        redirect(controller: "Adocao", action: "index")

    }

    def adocoes() {
        boolean estaLogado=true
        if(session["user"] == null || (session['ehAdmin']==null && !session['ehAdmim'] )) {
            estaLogado = false
        }

        if(!estaLogado)
            redirect(controller: "Login", action: "index")
        else
            respond Adocao.findAllByStatus("Aprovado"), model:[adocaoInstanceCount: Adocao.findAllByStatus("Aprovado").size(), login:session['user'], ehAdmin: session['ehAdmin']]

    }

    def show(Adocao adocaoInstance) {
        respond adocaoInstance
    }

    def create() {
        respond new Adocao(params)
    }

    @Transactional
    def save(Adocao adocaoInstance) {
        if (adocaoInstance == null) {
            notFound()
            return
        }

        if(session['user']==null) {
            redirect(controller: "Login", action: "index")
        } else {
            adocaoInstance.loginCliente = session['user']
            adocaoInstance.data = new Date()
            adocaoInstance.status = "Pendente"
            adocaoInstance.save flush:true

            redirect(controller: "Animal", action: "index")
        }

    }

    def edit(Adocao adocaoInstance) {
        respond adocaoInstance
    }

    @Transactional
    def update(Adocao adocaoInstance) {
        if (adocaoInstance == null) {
            notFound()
            return
        }

        if (adocaoInstance.hasErrors()) {
            respond adocaoInstance.errors, view:'edit'
            return
        }

        adocaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Adocao.label', default: 'Adocao'), adocaoInstance.id])
                redirect adocaoInstance
            }
            '*'{ respond adocaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Adocao adocaoInstance) {

        if (adocaoInstance == null) {
            notFound()
            return
        }

        adocaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Adocao.label', default: 'Adocao'), adocaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'adocao.label', default: 'Adocao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
