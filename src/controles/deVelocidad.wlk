import controles.control.*

object controlDeVelocidad inherits Control { 
  override method esInfringido(unUsuario, unaZona) {
    return unUsuario.excedeLimiteDeVelocidad(unaZona.velocidadMaxima())
  }
  
  override method montoDeMultaPorInfraccion() {
    return 3000
  }
}
