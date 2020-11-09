import vehiculos.vehiculo.*

class Camioneta inherits Vehiculo {
  override method consumoFijo() {
    return 4
  }
  
  override method consumoVariable(unosKilometros) {
    return 5 * unosKilometros
  }
  
  method esEcologico() {
    return false
  }
}
