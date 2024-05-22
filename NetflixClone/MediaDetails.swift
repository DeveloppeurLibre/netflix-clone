//
// Created for NetflixClone
//

import SwiftUI

struct MediaDetails: View {
    
    let media: Media
    @State private var selectedOption = 0
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                // MARK: Preview Cover
                AsyncImage(url: media.coverURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Image("placeholder")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width * 9 / 16)
                .clipped()
                
                VStack(alignment: .leading, spacing: 14) {
                    
                    // MARK: Title
                    Text(media.title)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundStyle(Color.white)
                    
                    // MARK: Main data
                    HStack {
                        Text("98% match")
                            .foregroundStyle(Color(red: 0.455, green: 0.788, blue: 0.451))
                        Text("2002")
                            .foregroundStyle(Color.white)
                        Text("12 seasons")
                            .foregroundStyle(Color.white)
                    }
                    
                    // MARK: Play Button
                    Button(action: {
                        // A remplir
                    }, label: {
                        HStack {
                            Image(systemName: "play.fill")
                            Text("Play")
                        }
                        .padding(8)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(Color.black)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                    })
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    
                    // MARK: Description
                    Text("Les péripéties de 6 jeunes newyorkais liés par une profonde amitié. Entre amour, travail, famille, ils partagent leurs bonheurs et leurs soucis au Central Perk, leur café favori...")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 14))
                    
                    // MARK: 3 Buttons
                    HStack {
                        Button {
                            // A compléter
                        } label: {
                            VStack(spacing: 12) {
                                Image(systemName: "plus")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 24, weight: .medium))
                                Text("My List")
                                    .foregroundStyle(Color.gray)
                                    .font(.system(size: 12))
                            }
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 24)
                        
                        Button {
                            // A compléter
                        } label: {
                            VStack(spacing: 12) {
                                Image(systemName: "hand.thumbsup")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 24, weight: .medium))
                                Text("Rate")
                                    .foregroundStyle(Color.gray)
                                    .font(.system(size: 12))
                            }
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 24)
                        
                        Button {
                            // A compléter
                        } label: {
                            VStack(spacing: 12) {
                                Image(systemName: "paperplane")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 24, weight: .medium))
                                Text("Recommand")
                                    .foregroundStyle(Color.gray)
                                    .font(.system(size: 12))
                            }
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 24)
                    }
                    
                    // MARK: Options
                    
                    HStack(spacing: 16) {
                        SelectableHeader(
                            title: "Episodes",
                            isSelected: .constant(selectedOption == 0),
                            onTap: { selectedOption = 0 }
                        )
                        SelectableHeader(
                            title: "More Like This",
                            isSelected: .constant(selectedOption == 1),
                            onTap: { selectedOption = 1 }
                        )
                        SelectableHeader(
                            title: "Trailers & More",
                            isSelected: .constant(selectedOption == 2),
                            onTap: { selectedOption = 2 }
                        )
                    }

                }
                .padding(8)
            }
            .background(Color.black)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    MediaDetails(media: previewMediums[0])
}
