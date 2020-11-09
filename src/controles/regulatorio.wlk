import controles.control.*

object controlRegulatorio inherits Control {
  override method esInfringido(unUsuario, _unaZona) {
    return !unUsuario.salioEnDiaPermitido()
  }
  
  override method montoDeMultaPorInfraccion() {
    return 2000
  }
}
