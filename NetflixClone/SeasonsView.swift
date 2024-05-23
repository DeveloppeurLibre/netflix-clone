//
// Created for NetflixClone
//

import SwiftUI

struct SeasonsView: View {
    
    let seasons: [Season]
    @State private var selectedSeason: Season
    
    
    init(seasons: [Season]) {
        self.seasons = seasons
        self.selectedSeason = seasons.first!
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Menu {
                ForEach(seasons, id: \.number) { season in
                    Button("Saison \(season.number)") {
                        selectSeason(season.number)
                    }
                }
            } label: {
                HStack {
                    Text("Saison \(selectedSeason.number)")
                    Image(systemName: "chevron.down")
                        .font(.system(size: 12))
                }
            }
            
            ForEach(selectedSeason.episodes) { episode in
                EpisodeCell(episode: episode)
            }
        }
        .foregroundStyle(Color(white: 0.75))
        .preferredColorScheme(.dark)
    }
    
    private func selectSeason(_ seasonNumber: Int) {
        selectedSeason = seasons.first(where: { season in
            season.number == seasonNumber
        })!
    }
}

#Preview {
    SeasonsView(seasons: [season9Friends, season10Friends])
}
