//
// Created for NetflixClone
//

import Foundation

struct Episode: Identifiable {
    let id = UUID()
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

let episodesFriendsS10 = [
    Episode(
        stringUrl: "https://media.themoviedb.org/t/p/w227_and_h127_bestv2/eo4ySedQXdpKoB2cRshDA9UEbLO.jpg",
        title: "The One After Joey and Rachel Kiss",
        duration: 29,
        synopsis: "Still in Barbados after Ross' keynote address, the friends cope with a variety of dilemmas. Ross has kissed Charlie, although she is still officially dating Joey. Joey and Rachel have kissed as well, but they agonize over how to tell Ross. Mike followed Phoebe to the island and proposed, despite his being in a relationship with someone else. And Monica has developed big hair, due to the humidity."
    ),
    Episode(
        stringUrl: "https://media.themoviedb.org/t/p/w227_and_h127_bestv2/2K1zPklVTR9Z2l47iJFuvRzGjOx.jpg",
        title: "The One Where Ross Is Fine",
        duration: 24,
        synopsis: "Rachel, Joey and Charlie attend an uncomfortable dinner party at Ross' apartment. Chandler commits an unpardonable act when he and Monica visit a couple who have adopted a cute boy. Former surrogate mother Phoebe is visited by her brother, Frank Jr., who is desperate because he can no longer cope with his precocious triplets."
    ),
    Episode(
        stringUrl: "https://media.themoviedb.org/t/p/w227_and_h127_bestv2/u2NYOpUX2ZE1KFkBr2h5mrYiN1P.jpg",
        title: "The One with Ross's Tan",
        duration: 24,
        synopsis: "Joey is confident while preparing to make love with Rachel for the first time, but he soon becomes uncharacteristically clumsy and Rachel feels uneasy as well. They wonder how Chandler and Monica transitioned from friends to lovers so easily. Monica and Phoebe's annoying friend Amanda visits. Ross goes to a spray-on tanning salon but fails to follow the simple directions properly."
    )
]

let episodesFriendsS9 = [
    Episode(
        stringUrl: "https://media.themoviedb.org/t/p/w454_and_h254_bestv2/dNqS2szoMmfgfFttsVZTggXjttz.jpg",
        title: "The One Where No One Proposes",
        duration: 23,
        synopsis: "Following Rachel's acceptance of Joey's accidental proposal, confusion reigns as Rachel wonders whether it was the right thing to do and Phoebe can't seem to mind her own business. Finally, Rachel, Ross and Joey get together and figure out that no one was actually going to propose. Meanwhile, Mr. Geller walks in on Monica and Chandler having sex in a closet."
    ),
    Episode(
        stringUrl: "https://media.themoviedb.org/t/p/w454_and_h254_bestv2/1WMGVmrp5ZOiLjMTCcx8J7Ws18g.jpg",
        title: "The One Where Emma Cries",
        duration: 23,
        synopsis: "Chandler, having trouble getting enough sleep at home, falls asleep in a meeting and accidentally agrees to run his company's Tulsa office. Emma won't stop crying after Rachel interrupts her nap; Monica and Phoebe try to help get her back to sleep. Meanwhile, Ross is still mad at Joey, and breaks his finger trying to punch him."
    ),
    Episode(
        stringUrl: "https://media.themoviedb.org/t/p/w454_and_h254_bestv2/svtWGUDz560o96lHLSIo0PN8zxS.jpg",
        title: "The One with the Pediatrician",
        duration: 23,
        synopsis: "Rachel's pediatrician drops her as a client because she calls him incessantly to ask about any insignificant issue concerning Emma, so now she must find a new one, which puts Ross in an awkward situation. Meanwhile, Joey arranges a blind date for Phoebe. Also, as Chandler and Monica are preparing to leave for Tulsa, Monica receives a job offer from a prestige restaurant in Manhattan."
    )
]
