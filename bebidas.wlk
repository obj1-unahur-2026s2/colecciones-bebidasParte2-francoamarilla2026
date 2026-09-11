object whisky {
  method rendimientoQueOtorga(dosisConsumida) = 0.9 ** dosisConsumida
}

object terere {
  method rendimientoQueOtorga(dosisConsumida) = 1.max(0.1 * dosisConsumida)
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida) = 0
}
object Licuado {
  const nutrientes = [] 

  method agregarNutriente(cantidadNutriente) {
    nutrientres.add(cantidadNutriente)
  }

  method rendimiento(cantidad) {
    sumaNutrientes = nutrientes.sum({ nutriente => nutriente })
    return (sumaNutrientes * cantidad) / 1000
  }
}

object AguaSaborizada {
  const bebidaBase = []

  method rendimiento(cantidad) {
    return 1 + bebidaBase.rendimiento(cantidad * 0.25)
  }
}

  object Coctel {
  const  bebidas = [] 
  method agregarBebida(bebida) {
    bebidas.add(bebida)
  }

  method rendimiento(cantidad) {
    if (bebidas.isEmpty()) return 0
    
    cantidadPorBebida = cantidad / bebidas.size()
      bebida.map({ bebida => bebida.rendimiento(cantidadPorBebida) })
      bebida.foreach(1, { acumulador, rendimientoBebida => acumulador * rendimientoBebida })
  }
}
