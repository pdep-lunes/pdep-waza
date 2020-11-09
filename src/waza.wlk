object waza {
  const usuarios = #{}
  const zonas    = #{}
  
  method pagarMultas() {
    usuarios.forEach { unUsuario => unUsuario.pagarMultas() }
  }
  
  method zonaMasTransitada() {
    return zonas.max { unaZona => unaZona.cantidadDeUsuarios() }
  }
  
  method usuariosComplicados() {
    return usuarios.filter { unUsuario => unUsuario.esComplicado() }
  }
}
