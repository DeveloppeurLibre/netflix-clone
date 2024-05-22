//
// Created for NetflixClone
//

import Foundation

struct Episode {
    let coverURL: URL?
    let title: String
    let duration: Int
    let synopsis: String
    
    init(stringUrl: String?, title: String, duration: Int, synopsis: String) {
        self.coverURL = URL(string: stringUrl ?? "")
        self.title = title
        self.duration = duration
        self.synopsis = synopsis
    }
}

let previewEpisodesFormula1 = [
    Episode(
        stringUrl: "https://media.themoviedb.org/t/p/w160_and_h90_bestv2/7u2Cow0xevM6LktMZifKeYgCjdB.jpg",
        title: "Une question d'argent",
        duration: 47,
        synopsis: "Lawrence Stroll est prêt à tout pour qu'Aston Martin devienne champion du monde. Mais son rêve risque de s'envoler alors que la nouvelle saison n'a même pas commencé !"
    ),
    Episode(
        stringUrl: "https://media.themoviedb.org/t/p/w227_and_h127_bestv2/vrFRYbAO7iz1VXTZcNvKObXmUYi.jpg",
        title: "La chute",
        duration: 43,
        synopsis: "Pour sa première année en Formule 1, Nyck de Vries suscite de grands espoirs. Mais la pression monte et il a du mal à suivre le rythme."
    ),
    Episode(
        stringUrl: "https://media.themoviedb.org/t/p/w227_and_h127_bestv2/h8bFw5z3ZbfOp6VGgLyLOwg5WA9.jpg",
        title: "Sous pression",
        duration: 49,
        synopsis: "McLaren est attendu au tournant après la dernière saison. Alors que la voiture de Lando Norris fait encore des siennes, le pilote star commence à réfléchir à ses options."
    )
]
