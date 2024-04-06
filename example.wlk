object cachito {
  var plata = 10000
  var estadoDeAnimo = triste

  method comoEstas() = estadoDeAnimo

  method comprar(algo) {
    plata = plata - estadoDeAnimo.cuantaPlataPierde()
    algo.sacarDelDeposito()
    plata = plata - algo.precio()
    estadoDeAnimo = contento
  }

  method puedePagar(algo) {
    return algo.precio() < plata
  }

  method darPlataA(alguien) {
    alguien.recibirPlata(plata)
    plata = 0
  }
}

object pepa {
  var dinero = 0
  method recibirPlata(plata) {
    dinero = dinero + plata
  }
}

object triste {
  method cuantaPlataPierde() = 10
}

object contento {
    method cuantaPlataPierde() = 50
}

object mesa {
  var costo = 1000 
  method sacarDelDeposito() {}
  
  method precio() = costo * 1.5

  method ganancia() = mesa.precio() - costo
  
  method esCaro() {
    return costo > 5000
  }

  method inflacion(porc) {
    costo = costo * (1+ porc)
  }
}
object auto {
  var precio = 1000000

  method precio() = precio
}