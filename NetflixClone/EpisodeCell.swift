//
// Created for NetflixClone
//

import SwiftUI

struct EpisodeCell: View {
    
    let episode: Episode
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                AsyncImage(url: episode.coverURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Rectangle()
                        .foregroundStyle(.gray)
                }
                .frame(width: 142, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(episode.title)
                        .foregroundStyle(.white)
                    Text("\(episode.duration)m")
                        .foregroundStyle(.gray)
                        .font(.system(size: 14, weight: .light))
                }
            }
            Text(episode.synopsis)
                .foregroundStyle(Color(white: 0.9))
                .font(.system(size: 14, weight: .light))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    EpisodeCell(episode: previewEpisodesFormula1[0])
        .padding()
        .background(Color.black)
}
