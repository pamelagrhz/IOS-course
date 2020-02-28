var name = "Pamela"
var variable:String = String()
var variable1:String = "Hola"
var variable2:Int = 90
var variable3:Int = Int()
var variable4:Double=90
var variable5:Bool=true

var arregloNombre:[String]=["Hola", "como", "estás"]
arregloNombre.append("Rodolfo")

var diccionario:[String:String]=["nombrePersona1": "Alejandro","nombrePersona2": "Pamela" ]
diccionario["nombrePersona1"]

//ordenamiento
arregloNombre.sorted(by: <)

if variable5 == true {
    print("verdadero")
}
else{
    print("falso")
}

//operacion ternaria
var resultado = variable5 ?true:false

for nombre in arregloNombre{
    print(nombre)
}

for i in 0...arregloNombre.count-1{
    print(arregloNombre[i])
}

switch variable5 {
case true:
    print("Verdadero")
case false:
    print("Falso")
default:
    <#code#>
}


