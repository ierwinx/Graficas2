import Foundation
import Charts

struct Ventas: Identifiable {
    let id: String = UUID().uuidString
    let animal: String
    let cantidad: Int
}

struct Lugares: Identifiable {
    let id: String = UUID().uuidString
    let lugar: String
    let ventas: [Ventas]
}

enum Animal: String {
    case Perro, Gato, Ave, Ratones, Conejos
}
