//
// Created for NetflixClone
//

import SwiftUI

struct MediaCell: View {
    
    let media: MediaPreview
    
    var body: some View {
        AsyncImage(url: media.coverURL) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            Image("placeholder")
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        .frame(width: 110, height: 150)
        .clipped()
        
        // MARK: Netflix Logo
        .overlay(alignment: .topLeading) {
            if media.isNetflixProduction {
                Image("Netflix_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16, height: 16)
                    .padding(4)
            }
        }
        
        // MARK: New Episodes
        .overlay(alignment: .bottom) {
            if media.hasNewEpisodes {
                Text("New Episodes")
                    .font(.system(size: 8, weight: .semibold))
                    .foregroundStyle(.white)
                    .padding(.horizontal, 4)
                    .padding(.vertical, 2)
                    .background(Color(red: 0.82, green: 0.184, blue: 0.145))
            }
        }
        
        // MARK: Top Rating
        .overlay(alignment: .topTrailing) {
            if media.topRated != nil {
                ZStack {
                    Rectangle()
                        .foregroundStyle(Color(red: 0.82, green: 0.184, blue: 0.145))
                        .frame(width: 15, height: 22)
                        .shadow(color: .black.opacity(0.3), radius: 1)
                        .rotation3DEffect(
                            .degrees(-12),
                            axis: (x: 0.0, y: 1.0, z: 0.0)
                        )
                        .offset(x: 0, y: -4)
                    VStack(spacing: -2) {
                        Text("TOP")
                            .font(.system(size: 5))
                        Text("10")
                            .font(.system(size: 8))
                    }
                    .offset(x: 0, y: -2)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.white)
                }
            }
        }
        
        .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    MediaCell(media: previewFriends)
}
