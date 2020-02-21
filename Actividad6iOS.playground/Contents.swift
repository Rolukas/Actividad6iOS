import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*:
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
infix operator ^

func ^ (a: Float, b: Float) -> Float {
    return pow(a, b)
}




//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
postfix operator |>

var arrayOfNumbers =  [2,5,3,4]

postfix func |> (arr: [Int]) -> [Int]{
    return arrayOfNumbers.sorted()
}

/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
class position {
    var values:[Int]
    init(v:[Int]) {
        self.values = v
    }
    
    subscript(idx:Int) -> Int {
        get {
            return values[idx]
        }
        set(newValue) {
            values[idx] = newValue * 2
        }
    }
}

var dataTwo = [2,3,4,5]
var load = position(v: dataTwo)

load[0] = 4
load[1] = 7
load[2] = 8
load[3] = 1

load.values


//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
struct Enemy {
    
    var position:CGPoint
    init(point:CGPoint){
        self.position = point
    }
    
    subscript() -> CGPoint {
        get {
            return position
        }
        set(newValue) {
            position = newValue
        }
    }
}

var xPos = 2
var yPos = 4

var enemy = Enemy(point:CGPoint(x:xPos, y:yPos))

// First
enemy.position
// Change
xPos = 4
yPos = 6
enemy.position = CGPoint(x:xPos, y:yPos)
// New
enemy.position
/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
var datos = ["A":1, "B":2, "C":3]

func existeValor(index:String){
    guard let existe = datos[index] else {
        return
    }
    print("exist? -> \(existe)")
}








