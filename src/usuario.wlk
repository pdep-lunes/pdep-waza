import multa.*

class Usuario {
  const nombreDeUsuario
  const DNI
  const vehiculo
  const multas
  var   dinero
  
  method pagar(unaCantidad) {
    if(!self.leAlcanzaLaPlata(unaCantidad)) throw new Exception(message = "No me alcanza la plata!")
    dinero -= unaCantidad
  }
  
  method leAlcanzaLaPlata(unaCantidad) {
    return dinero >= unaCantidad
  }
  
  method pagarMultas() {
    multas.forEach { unaMulta => unaMulta.serPagadaPor(self) }
  }
  
  method esComplicado() {
    return self.montoEnMultasNoPagas() > 5000
  }
  
  method montoEnMultasNoPagas() {
    return self.multasNoPagas().sum { unaMulta => unaMulta.costo() }
  }
  
  method multasNoPagas() {
    return multas.filter { unaMulta => !unaMulta.estaPaga() }
  }
  
  method recorrer(unaDistancia) {
    vehiculo.recorrer(unaDistancia)
  }
  
  method cargarNafta(unaCantidad) {
    const cuantoCarga = vehiculo.cuantoPuedeCargar(unaCantidad)
    self.pagar(cuantoCarga * 40)
    vehiculo.cargarCombustible(cuantoCarga)
  }
  
  method excedeLimiteDeVelocidad(unLimite) {
    return vehiculo.velocidadPromedio() > unLimite
  }
  
  method manejaEcologico() {
    return vehiculo.esEcologico()
  }
  
  method salioEnDiaPermitido() {
    return DNI.even() == new Date().day().even()
  }
  
  method multar(unMonto) {
    multas.add(new Multa(costo = unMonto))
  }
}
