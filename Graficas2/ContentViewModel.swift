import Foundation

class ContentViewModel: ObservableObject {
    
    var ventas = [
        Ventas(animal: Animal.Perro.rawValue, cantidad: 200),
        Ventas(animal: Animal.Gato.rawValue, cantidad: 130),
        Ventas(animal: Animal.Ave.rawValue, cantidad: 150),
        Ventas(animal: Animal.Ratones.rawValue, cantidad: 100),
        Ventas(animal: Animal.Conejos.rawValue, cantidad: 3)
    ]
    
    private var ventas2 = [
        Ventas(animal: Animal.Perro.rawValue, cantidad: 500),
        Ventas(animal: Animal.Gato.rawValue, cantidad: 260),
        Ventas(animal: Animal.Ave.rawValue, cantidad: 200),
        Ventas(animal: Animal.Ratones.rawValue, cantidad: 89),
        Ventas(animal: Animal.Conejos.rawValue, cantidad: 10)
    ]
    
    var lugares: [Lugares] = []
    
    init() {
        lugares = [
            Lugares(lugar: "Internet", ventas: self.ventas),
            Lugares(lugar: "Retail", ventas: self.ventas2)
        ]
    }
    
}
