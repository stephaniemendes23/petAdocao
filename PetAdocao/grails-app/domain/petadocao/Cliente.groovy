package petadocao

class Cliente {

    String login
    String senha
    String CPF
    String nome
    String sobrenome
    String sexo
    String rua
    String bairro
    String cidade
    String estado
    String celular
    String email
    int numero
    int idade

//    static hasMany = [solicita:Solicitacao]


    static constraints = {

        sexo inList:["Masculino","Feminino"]
        estado inList:["AC","AL","AP","AM","BA","CE", "DF", "ES" ,"GO", "MA", "MT","MS","MG","PA","PB","PR","PE","PI","RJ","RN","RS","RO","RR","SC","SP","SE","TO"]
        nome nullable:false, blank:false
        sobrenome nullable:false, blank:false
        rua nullable:false, blank:false
        bairro nullable:false, blank:false
        cidade nullable:false, blank:false
        email email:true, unique:true
        senha size:6..10
        //       cpf validator : {
        //           valor,objeto -> (valor.size() == 11)
        //       },unique:true
        //       cep validator : {
        //           valor,objeto -> (valor.size() == 9)
        //       }
        numero min:1
        idade min:18

    }
}