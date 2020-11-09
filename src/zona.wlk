class Zona {
  const velocidadMaxima
  const usuarios  = #{}
  const controles = #{}
  
  method cantidadDeUsuarios() {
    return usuarios.size()
  }
  
  method efectivizarControles() {
    controles.forEach { unControl => unControl.efectivizarSobre(usuarios, self) }
  }
  
  method velocidadMaxima() {
    return velocidadMaxima
  }
}
