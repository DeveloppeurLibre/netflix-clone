//
// Created for NetflixClone
//

import SwiftUI

struct TrailersView: View {
    
    let trailersYouTubeIds: [String]
    
    var body: some View {
        VStack {
            ForEach(trailersYouTubeIds, id: \.self) { id in
                YoutubeVideoView(id: id)
                    .aspectRatio(16/9, contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        }
    }
}

#Preview {
    TrailersView(trailersYouTubeIds: ["ZpBX03159BE", "7yY6qANStNg"])
        .padding()
        .frame(maxHeight: .infinity)
        .background(Color.black)
}
