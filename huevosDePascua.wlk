object huevoRepostero {
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
    method calorias() = 750
}

object huevoMixto {
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
    method caloriasDeChocoBlanco() = 500
    method caloriasDeChocoConLeche() = 400
    method calorias() = self.caloriasDeChocoBlanco() + self.caloriasDeChocoConLeche()
}

object conejo {
    var property peso = 0 
    method esDeChocolateBlanco() = false
    method esDeChocolateAmargo() = true
    method calorias() = 10 *  peso
}

object blisterHuevitos {
    var property huevitos = 3
    method esDeChocolateBlanco() = huevitos >= 5
    method esDeChocolateAmargo() = false
    method calorias() = huevitos * 100 + huevitos.div(5) * 150
}

object matrioshka {
    var property huevoSuInterior = huevoMixto
    var property decoracion = flor
    method esDeChocolateBlanco() = huevoSuInterior.esDeChocolateBlanco()
    method esDeChocolateAmargo() = true
    method calorias() = 3000 + huevoSuInterior.calorias() + decoracion.caloriasDecoriacion()
}

object flor {
    var property petalos = 0
    method caloriasDecoracion() = petalos * 100
}

object arbol {
    method caloriasDecoracion() = 150
}