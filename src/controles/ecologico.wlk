import controles.control.*

object controlEcologico inherits Control { 
  override method esInfringido(unUsuario, _unaZona) {
    return unUsuario.manejaEcologico()
  }
  
  override method montoDeMultaPorInfraccion() {
    return 1500
  }
}
