import huevosDePascua.*
import chicos.*

object caceria {
    const huevosEncontrados = []
    const huevosNoEncontrados = []
    method inicializarJuego() {
        flor.petalos(7)
        blisterHuevitos.huevitos(14)
        matrioshka.huevoSuInterior(blisterHuevitos)
        huevosNoEncontrados.addAll([blisterHuevitos, matrioshka, huevoMixto, conejo])
    }

    method cantidadPorEncontrar() = huevosNoEncontrados.size()

    method cuantosConChocoBlanco() = huevosNoEncontrados.count({huevo => huevo.esDeChocolateBlanco()})

    method aunNoFueEncontrado(unHuevo) = huevosNoEncontrados.contains(unHuevo)

    method encontrarUnHuevoPor(unChico, unHuevo) {
        unChico.comer(unHuevo)
        huevosNoEncontrados.remove(unHuevo)
        huevosEncontrados.add(unHuevo)
    }
    
    method encontrarPrimerHuevo(unChico) {
        self.encontrarUnHuevoPor(unChico, huevosNoEncontrados.first())
    }

    method encontrarLosRestantes(unChico) {
        huevosNoEncontrados.forEach({h => self.encontrarUnHuevoPor(unChico,h)})
    }

    method huevosFaltantesBlancos() = huevosNoEncontrados.filter({h => h.esDeChocolateBlanco()})

    method noEncontradoMayorCalorias() = huevosNoEncontrados.max({h => h.calorias()})
}