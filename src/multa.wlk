class Multa {
  var costo
  var estaPaga = false
  
  method serPagadaPor(unUsuario) {
    try {
      if (!estaPaga) unUsuario.pagar(costo)
      estaPaga = true
    } catch e : Exception {
      costo *= 1.1
    }
  }
  
  method estaPaga() {
    return estaPaga
  }
}
