class Control {
  method efectivizarSobre(usuarios, zona) {
    usuarios.forEach { unUsuario => self.controlar(unUsuario, zona) }
  }
  
  method controlar(unUsuario, unaZona) {
    if (self.esInfringido(unUsuario, unaZona)) unUsuario.multar(self.montoDeMultaPorInfraccion())
  }
  
  method esInfringido(unUsuario, unaZona)
  
  method montoDeMultaPorInfraccion()
}
