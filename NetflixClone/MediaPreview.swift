//
// Created for NetflixClone
//

import Foundation

struct MediaPreview: Identifiable {
    let id = UUID()
    let title: String
    let coverURL: URL?
    let isNetflixProduction: Bool
    let hasNewEpisodes: Bool
    let topRated: Int?
    let percentageMatch: Int
    let year: String
    let synopsis: String
    
    init(
        title: String,
        coverURL: URL?,
        isNetflixProduction: Bool = false,
        hasNewEpisodes: Bool = false,
        topRated: Int? = nil,
        percentageMatch: Int,
        year: String,
        synopsis: String
    ) {
        self.title = title
        self.coverURL = coverURL
        self.isNetflixProduction = isNetflixProduction
        self.hasNewEpisodes = hasNewEpisodes
        self.topRated = topRated
        self.percentageMatch = percentageMatch
        self.year = year
        self.synopsis = synopsis
    }
}

let previewFriends = MediaPreview(
    title: "Friends",
    coverURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2koX1xLkpTQM4IZebYvKysFW1Nh.jpg"),
    percentageMatch: 97,
    year: "2003",
    synopsis: "Les péripéties de 6 jeunes newyorkais liés par une profonde amitié. Entre amour, travail, famille, ils partagent leurs bonheurs et leurs soucis au Central Perk, leur café favori..."
)
