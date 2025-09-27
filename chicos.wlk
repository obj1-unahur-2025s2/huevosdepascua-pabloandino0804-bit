import huevosDePascua.*

object ana {
    const property huevosComidos = []
    method comer(unHuevo) {
        huevosComidos.add(unHuevo)
    }
    method estaEnfermo() {
        return self.consumioMasDe5000() || self.consumioUnoDeChocolateBlanco()
    }

    method consumioMasDe5000() = huevosComidos.sum({huevo => huevo.calorias()}) > 5000

    method consumioUnoDeChocolateBlanco() = huevosComidos.find{huevo => huevo.esDeChocolateBlanco()}
}

object jose{
    var ultimoHuevoComido = huevoMixto
    method comer(unHuevo) {
        ultimoHuevoComido = unHuevo
    }

    method estaEnfermo() = ultimoHuevoComido.esDeChocolateAmargo()
}

object tito {
    method comer(unHuevo) {}
    method estaEnfermo() = false
}