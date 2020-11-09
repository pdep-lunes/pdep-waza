import vehiculos.vehiculo.*

class Deportivo inherits Vehiculo {
  override method consumoVariable(_unosKilometros) {
    return 0.2 * velocidadPromedio
  }
  
  method esEcologico() {
    return velocidadPromedio < 120
  }
}
