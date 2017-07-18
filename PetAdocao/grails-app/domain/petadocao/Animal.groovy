package petadocao

class Animal {
    int id
    String apelido
    String raca
    String idade
    String porte
    String cor
    String vacinacao
    String sexo
    Date data_entrada
    //byte[] foto

    //static hasMany = [solicitacoes:Solicitacao]

    //  static hasMany = [solicita:Solicitacao]

    static mapping = {
        id generator: 'identity'
    }

    static constraints = {

        porte inList:["Miniatura", "Pequeno","Medio","Grande"]
        vacinacao inList:["Pendente","Em dia", "Sem informacao"]
        sexo inList:["Macho","Femea"]
        apelido nullable:false, blank:false



    }
}
