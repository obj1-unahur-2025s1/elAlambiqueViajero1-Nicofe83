object luke{
    var cantidadViajes = 0
    var vehiculo = alambiqueVeloz
    var recuerdo = null

    method cantidadViajes() = cantidadViajes 

    method elegirVehiculo(unVehiculo) { vehiculo = unVehiculo}
    method vehiculo() = vehiculo

    method viajar(lugar){
        if (lugar.puedeLlegar()) {
            cantidadViajes = cantidadViajes + 1
            recuerdo = lugar.recuerdoTipico()
            vehiculo.consumirCombustible()
        }
    }
    method recuerdo() = recuerdo
}

//Vehiculos
object alambiqueVeloz {
    var rapido = true
    var combustible = 100
    const consumoPorViaje = 10
    method tieneCombustible() = combustible >= consumoPorViaje
    method consumirCombustible() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
}

object superChatarraEspecial {
    var municiones = 100
    method tieneCombustible() = municiones >= 2
    method dispararCaniones() { municiones = municiones -1} 
    method rapido() = !canionesCargados()
}
// Ciudades
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

object italia{
    method recuerdoTipico() = "Escultura del Coliseo"
    method puedeLlegar() =  alambiqueVeloz.rapido() && alambiqueVeloz.tieneCombustible()
}

