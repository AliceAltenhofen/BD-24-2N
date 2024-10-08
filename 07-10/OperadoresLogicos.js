//Operador S (AND) - Simbolo: &&
//Retorna true apenas se todos os envolvidos forem true
//Apenas um unico false já é suficiente para retornar alse
//console.log(true && true)

let idade = 20
let maiorIdade = idade >= 18 //boolean
let temCarteira = true
let temCarro = true

console.log(maiorIdade && temCarteira && temCarro) //true

//Operador OU (OR) - Simbolo: ||
//Retorna false apenas se todos os envolvidos forem false
//tendo somente um true o resultado ja é true
console.log(true || true) //true
console.log(true || false) // true
console.log(false || true) // true
console.log(false || false) //false

let temTrabalho = true
let economiza = true
let investe = true
let herdeiro = true

console.log((temTrabalho  && economiza && investe) || herdeiro)
let ligado = true


//Operador NAO/Negação (NOT) - Simbolo: !
//inverte o estado - true ele transforma em false e vice e versa
let ligado = true
console.log(!false)