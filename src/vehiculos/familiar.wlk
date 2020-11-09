import vehiculos.vehiculo.*

class Familiar inherits Vehiculo {
  override method consumoVariable(_unosKilometros) {
    return 0
  }
  
  method esEcologico() {
    return true
  }
}
