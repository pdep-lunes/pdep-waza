class Vehiculo {
  const capacidadDeTanque
  const velocidadPromedio
  var   combustible
  
  method cuantoGasta(unosKilometros) {
    return self.consumoFijo() + self.consumoVariable(unosKilometros)
  }
  
  method consumoFijo() {
    return 2
  }
  
  method consumoVariable(unosKilometros)
  
  method recorrer(unaDistancia) {
    self.disminuirCombustible(self.cuantoGasta(unaDistancia))
  }
  
  method disminuirCombustible(unaCantidad) {
    if (combustible < unaCantidad) throw new Exception(message = "No me alcanza la nafta!")
    combustible -= unaCantidad
  }
  
  method cuantoPuedeCargar(unaCantidad) {
    return unaCantidad.min(capacidadDeTanque - combustible)
  }
  
  method cargarCombustible(unaCantidad) {
    combustible += unaCantidad
  }
  
  method velocidadPromedio() {
    return velocidadPromedio
  }
}
