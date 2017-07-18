import petadocao.Admin
import petadocao.Adocao
import petadocao.Animal
import petadocao.Cliente

class BootStrap {

    def init = { servletContext ->
        new Admin(login:"admin", senha:"adminadmin").save()
        new Animal(id: 1, apelido:"Nina", raca:"Poodle", idade:"16", porte:"Medio", cor:"Branco", vacinacao:"Pendente", sexo:"Femea", data_entrada:new Date()).save()
        new Animal(id: 2, apelido:"Mimi", raca:"Pastor Alemão", idade:"10", porte:"Grande", cor:"Preto", vacinacao:"Em dia", sexo:"Femea", data_entrada:new Date()).save()
        new Animal(id: 3, apelido:"Ted", raca:"Yorkshire", idade:"3", porte:"Miniatura", cor:"Marrom", vacinacao:"Sem informacao", sexo:"Macho", data_entrada:new Date()).save()
        new Animal(id: 4, apelido:"Toto", raca:"Husky Siberiano", idade:"1", porte:"Grande", cor:"Preto", vacinacao:"Pendente", sexo:"Macho", data_entrada:new Date()).save()
        new Animal(id: 5, apelido:"Buddy", raca:"Labrador", idade:"4", porte:"Grande", cor:"Bege", vacinacao:"Pendente", sexo:"Femea", data_entrada:new Date()).save()
        new Animal(id: 6, apelido:"Dunha", raca:"Pug", idade:"12", porte:"Pequeno", cor:"Bege", vacinacao:"Em dia", sexo:"Macho", data_entrada:new Date()).save()
        new Animal(id: 7, apelido:"Mel", raca:"Boxer", idade:"1", porte:"Grande", cor:"Marrom", vacinacao:"Em dia", sexo:"Femea", data_entrada:new Date()).save()
        new Animal(id: 8, apelido:"Ed", raca:"Golden Retriever", idade:"9", porte:"Grande", cor:"Bege", vacinacao:"Em dia", sexo:"Macho", data_entrada:new Date()).save()
        new Animal(id: 9, apelido:"Jana", raca:"Beagle", idade:"5", porte:"Medio", cor:"Marrom", vacinacao:"Em dia", sexo:"Femea", data_entrada:new Date()).save()
        new Animal(id: 10, apelido:"Horse", raca:"Dog Alemao", idade:"3", porte:"Grande", cor:"Preto com branco", vacinacao:"Em dia", sexo:"Macho", data_entrada:new Date()).save()
        new Cliente(login:"ste",senha:"123456",CPF:"11111111111",nome:"Stephanie", sobrenome:"Morini", sexo: "Feminino", rua:"Rua nro 1", bairro:"Cidade Jardim", cidade:"São Carlos", estado:"SP", celular:"119999999999", email:"ste@gmail.com",numero:11,idade:27).save()
        new Cliente(login:"maria",senha:"mariazinha",CPF:"22222222222",nome:"Maria", sobrenome:"Silva", sexo:"Feminino", rua:"Rua nro 2", bairro:"Centro", cidade:"São Carlos", estado:"SP", celular:"169999999999", email:"maria@gmail.com",numero:444,idade:24).save()
        new Adocao(idAnimal:4,loginCliente:"ste",data:new Date(),status:"Aprovado").save()
        new Adocao(idAnimal:1,loginCliente:"ste",data:new Date(),status:"Pendente").save()
        new Adocao(idAnimal:6,loginCliente:"maria",data:new Date(),status:"Rejeitado").save()
    }
    def destroy = {
    }
}
