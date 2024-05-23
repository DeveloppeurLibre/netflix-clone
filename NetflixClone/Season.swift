//
// Created for NetflixClone
//

import Foundation

struct Season {
    let number: Int
    let episodes: [Episode]
    let date: String
}

let season9Friends = Season(
    number: 9,
    episodes: episodesFriendsS9,
    date: "2002"
)

let season10Friends = Season(
    number: 10,
    episodes: episodesFriendsS10,
    date: "2003"
)
