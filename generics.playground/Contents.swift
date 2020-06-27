import UIKit

/**
 Enunciado 1:
 Dado las clases Libro, Revista, CajaLibros y CajaRevistas, re escribe el código usando generics.
 */
class Libro {}
class Revista {}
class Caja<T> {
    private var elementos:[T] = [T]()
    func add(elemento: T) {
        elementos.append(elemento)
    }
}

let libro1 = Libro()
let libro2 = Libro()
let revista1 = Revista()
let revista2 = Revista()

let cajaLibro = Caja<Libro>()
cajaLibro.add(elemento: libro1)
cajaLibro.add(elemento: libro2)
let cajaRevistas = Caja<Revista>()
cajaRevistas.add(elemento: revista1)
cajaRevistas.add(elemento: revista2)



/**
Enunciado 2:
Reemplaza las 2 funciones suma por una usando generics.
*/
//Generic functions

func suma<T: Numeric>(x: T, y: T) -> T {
    return x+y
}
suma(x: 3, y: 5)
suma(x: 3.5, y: 4)




/**
 Enunciado 3:
 Crea un protocolo usando generics y associatedtype
 */

protocol Lista {
    associatedtype Item
    func add(item: Item)
    func get(position: Int) -> Item
}
class MiLista<String>: Lista {
    private var items: [String] = [String]()
    func add(item: String){}
    func get(position: Int) -> String {
        return items[position]
    }
}
class MiListaLibros<Libro>: Lista {
    private var items: [Libro] = [Libro]()
    func add(item: Libro){}
    func get(position: Int) -> Libro {
        return items[position]
    }
}




























































/**
 Enunciado 4:
 Dados las clases Figura, Cuadrado, Circulo y la función crearFigura, usa Generics en el protocolo y modifica la función  usando tipos opacos.
 */
protocol Figura {
    associatedtype Color
    var color: Color { get }
    func describir() -> String
}
struct Cuadrado: Figura {
    var color: String
    func describir() -> String {
        return "Soy un cuadrado"
    }
}
struct Circulo: Figura {
    var color: Int
    func describir() -> String {
        return "Soy un circulo."
    }
}
func crearFigura() -> some Figura {
    return Cuadrado(color: "Azul")
}
