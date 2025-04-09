object luke{
    var cantidadViajes = 0
    var recuerdo = null

    method cantidadViajes() = cantidadViajes 

    method viajar(lugar){
        if (lugar.puedeLlegar()) {
            cantidadViajes = cantidadViajes + 1
            recuerdo = lugar.recuerdoTipico()
            alambiqueVeloz.consumirCombustible()
        }
    }
    method recuerdo() = recuerdo
}

object alambiqueVeloz {
    var rapido = true
    var combustible = 20
    const consumoPorViaje = 10
    method tieneCombustible() = combustible >= consumoPorViaje
    method consumirCombustible() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
}

object paris{
    method recuerdoTipico() = "Llavero Torre Eiffel"
    method puedeLlegar() =  alambiqueVeloz.tieneCombustible() 
}

object buenosAires{
    method recuerdoTipico() = "Mate"
    method puedeLlegar() =  alambiqueVeloz.rapido() 
}

object bagdad {
    var recuerdo = "bidon de petroleo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo = nuevo }
    method puedeLlegar() = true
}

object lasVegas{
    var homenaje = paris
    method homenaje(lugar) {homenaje = lugar}
    method recuerdoTipico() = homenaje.recuerdoTipico()
    method puedeLlegar() = homenaje.puedeLlegar()
}
