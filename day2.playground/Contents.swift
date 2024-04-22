import UIKit

//Day 2

//array
let name1 = "Adalberto"
var name2 = "Bernardo"
var name3 = "Camila"
let name4 = "Denise"
var pessoas = [name1,name2,name3,name4,"Fabiana"]//,false, 38, 57.9]
pessoas[1] // Bernardo
//pessoas[9]  //erro

//array hererogeneo
var pessoas2 = Array<Any>()
pessoas2.append("Fernanda")
pessoas2.append(true)
pessoas2.append(4.3)
pessoas2.append(1)
pessoas2.append(Set (["Corinthians","Palmeiras","São Paulo"]) )     //Set
pessoas2.append(["item1":"bola","item2":"caneta"])                  //Dictionary
pessoas2[0]                                                         //String
( pessoas2[4] as? Set<String>)?.first
( pessoas2[5] as? [String: String] )?["item2"] ?? "Nada"


//set
let cores = Set(["amarelo","azul","verde"])
let cores2 = Set(["amarelo","verde","amarelo","azul"]) // so tera um amarelo na listagem
cores.first //pode retonar algo diferente de amarelo

//tuplas
var cadastro = (first: "Amanda", last: "Silva", age:25)
cadastro.0
cadastro.first
cadastro.age

//dictionary
var xpto = ["carro1": 2.05,
            "carro2": 4
            ]
xpto["carro1"]
xpto["carro3"] //nil
xpto["carro3", default: 1]

//criando variáveis vazias

//array
var listaString = [String]()
listaString.append("Chico")
listaString[0]

var listaInt = [Int]()
listaInt.append(9)
listaInt[0]

var listaBool = Array<Bool>()

//set
var setString = Set<String>()
setString.insert("azul")
setString.first

//tuplas
// nao se cria tuplas vazias pois os dados nela não podem ser mudados

//dicionario
var staff = [String:String]()
staff["001"] = "Paulo"

var staff2 = Dictionary<Int,String>()
staff2[1] = "Pedro"

//enums
enum  Result  {
    case failure
    case success
}
var process = Result.failure
process == Result.failure

//enums com valores associados
enum Atividade {
    case entendiado
    case conversando(Assunto: String)
    case cantando(musica: String)
    case arrecadando(valor: Double)
}

var realizado = Atividade.arrecadando(valor: 20.1)
var proza = Atividade.conversando(Assunto: "Fofoca")

// nao focar agora nisso - mas esta aqui um exemplo de como obter os dados dentro do enum
if case let .conversando(Assunto) = proza {
    Assunto
}

//enums com valores 'crus'

enum Games: Int{
    case Playstation
    case Xbox
    case Switch
    case Dreamcast
}

var preference = Games(rawValue : 3) // Dreamcast pq comeca com 0

//pode ser forçar a começar com 1, atribuindo o valor 1 para a primeira opção

enum Games2: Int{
    case Playstation = 1
    case Xbox
    case Switch
    case Dreamcast
}

var preference2 = Games2(rawValue : 4) // Agora Dreamcast eh o quarto item

//eh possivel atribuir qualquer valor para o enum e buscar por ele mesmo que os items esteja fora de ordem
enum Games3: Int{
    case Playstation = 1
    case Xbox = 7
    case Switch = 5
    case Dreamcast = 99
}

var preference3 = Games3(rawValue : 99) // Agora Dreamcast eh o quarto item

