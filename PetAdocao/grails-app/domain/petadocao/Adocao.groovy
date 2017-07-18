package petadocao

class Adocao {
    int idAnimal
    String loginCliente
    Date data
    String status

    static constraints = {
        status inList:["Aprovado","Rejeitado", "Pendente"]
    }
}
