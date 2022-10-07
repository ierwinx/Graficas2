import SwiftUI
import Charts

struct ContentView: View {
    
    @StateObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                Chart(contentViewModel.ventas) { animal in
                    BarMark(x: .value("Animales", animal.animal), y: .value("Cantidad", animal.cantidad))
                    RuleMark(y: .value("Media", 100))
                }
                .frame(height: 200)
                .foregroundColor(.red)
                
                Chart(contentViewModel.ventas) { animal in
                    LineMark(x: .value("Animales", animal.animal), y: .value("Cantidad", animal.cantidad))
                    RuleMark(y: .value("Media", 100))
                        .foregroundStyle(.green)
                        .annotation(position: .top, alignment: .leading) {
                            Text("Media: 100")
                        }
                }
                .frame(height: 200)
                
                Chart(contentViewModel.ventas) { animal in
                    AreaMark(x: .value("Animales", animal.animal), y: .value("Cantidad", animal.cantidad))
                }
                .frame(height: 200)
                .foregroundStyle(.cyan)
                
                Chart(contentViewModel.ventas) { animal in
                    RectangleMark(x: .value("Animales", animal.animal), y: .value("Cantidad", animal.cantidad))
                }
                .frame(height: 200)
                .foregroundStyle(.gray)
                
                Chart(contentViewModel.ventas) { animal in
                    PointMark(x: .value("Animales", animal.animal), y: .value("Cantidad", animal.cantidad))
                }
                .chartXAxis {
                    //automaticamente elimina el diseño
                }
                .frame(height: 200)
                .foregroundStyle(.purple)
                
                Chart(contentViewModel.ventas) { animal in
                    BarMark(x: .value("Animales", animal.animal), y: .value("Cantidad", animal.cantidad))
                        .foregroundStyle(.thinMaterial)
                    LineMark(x: .value("Animales", animal.animal), y: .value("Cantidad", animal.cantidad))
                        .foregroundStyle(.black)
                    RuleMark(y: .value("Media", 100))
                        .foregroundStyle(.blue)
                }
                .frame(height: 200)
                
                Chart {
                    ForEach(contentViewModel.lugares) { lugar in
                        ForEach(lugar.ventas) { venta in
                            if lugar.lugar == "Internet" {
                                BarMark(x: .value("Animales", venta.animal), y: .value("Cantidad", venta.cantidad))
                            } else {
                                BarMark(x: .value("Animales", venta.animal), y: .value("Cantidad", venta.cantidad))
                            }
                        }
                        .foregroundStyle(by: .value("Axis", lugar.lugar))
                    }
                }
                .frame(height: 200)
                .foregroundColor(.red)
                
                
                Chart(contentViewModel.ventas) { animal in
                    PointMark(x: .value("Animales", animal.animal), y: .value("Cantidad", animal.cantidad))
                    LineMark(x: .value("Animales", animal.animal), y: .value("Cantidad", animal.cantidad))
                }
                .chartXAxis {
                }
                .frame(height: 200)
                .foregroundStyle(.purple)
                
            }
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
