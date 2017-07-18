package petadocao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AnimalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def user = "", ehAdmin=false
        if(session["user"] != null) {
            user = session["user"]
            ehAdmin = session['ehAdmin']
        }

        def listAdocoes = Adocao.findAllByStatus("Aprovado")
        def listAnimais
        if(listAdocoes.size() > 0)
           listAnimais = Animal.findAllByIdNotInList(listAdocoes.idAnimal)
        else
            listAnimais = Animal.findAll()
        respond listAnimais, model:[animalInstanceCount: listAnimais.size(), login:user, ehAdmin:ehAdmin]
    }


    def show(Animal animalInstance) {
        def user = "", ehAdmin=false
        if(session["user"] != null) {
            user = session["user"]
            ehAdmin = session['ehAdmin']
        }

        respond animalInstance, model:[login:user, ehAdmin:ehAdmin]
    }

    def create() {
        boolean estaLogado=true
        if(session["user"] == null || (session['ehAdmin']==null && !session['ehAdmim'] )) {
            estaLogado = false
        }

        params.put("login",session['user'])
        params.put("ehAdmin",session['ehAdmin'])

        if(!estaLogado)
            redirect(controller: "Login", action: "index")
        else
            respond new Animal(params)
    }

    @Transactional
    def save(Animal animalInstance) {
        if (animalInstance == null) {
            notFound()
            return
        }

        if (animalInstance.hasErrors()) {
            respond animalInstance.errors, view:'create'
            return
        }

        animalInstance.save flush:true

        redirect(controller: "Animal", action: "index")
    }

    def edit(Animal animalInstance) {
        respond animalInstance
    }

    @Transactional
    def update(Animal animalInstance) {
        if (animalInstance == null) {
            notFound()
            return
        }

        if (animalInstance.hasErrors()) {
            respond animalInstance.errors, view:'edit'
            return
        }

        animalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Animal.label', default: 'Animal'), animalInstance.id])
                redirect animalInstance
            }
            '*'{ respond animalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Animal animalInstance) {

        if (animalInstance == null) {
            notFound()
            return
        }

        animalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Animal.label', default: 'Animal'), animalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'animal.label', default: 'Animal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
