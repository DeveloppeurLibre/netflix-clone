//
// Created for NetflixClone
//

import SwiftUI

struct MediaDetails: View {
    
    let media: Media
    @State private var selectedOption: Option = .episodes
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                headerPreview
                VStack(alignment: .leading, spacing: 14) {
                    title
                    mainData
                    playButton
                    synopsis
                    actionsButtonRow
                    optionsSection
                }
                .padding(8)
            }
            .background(Color.black)
            .ignoresSafeArea()
        }
    }
    
    // MARK: - Private enums
    
    private enum Option {
        case episodes
        case more
        case trailers
    }
    
    // MARK: - Private subviews
    
    private var headerPreview: some View {
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
    }
    
    private var title: some View {
        Text(media.title)
            .font(.system(size: 20, weight: .bold))
            .foregroundStyle(Color.white)
    }
    
    private var mainData: some View {
        HStack {
            Text("98% match")
                .foregroundStyle(Color(red: 0.455, green: 0.788, blue: 0.451))
            Text("2002")
                .foregroundStyle(Color.white)
            Text("12 seasons")
                .foregroundStyle(Color.white)
        }
    }
    
    private var playButton: some View {
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
    }
    
    private var synopsis: some View {
        Text("Les péripéties de 6 jeunes newyorkais liés par une profonde amitié. Entre amour, travail, famille, ils partagent leurs bonheurs et leurs soucis au Central Perk, leur café favori...")
            .foregroundStyle(Color.white)
            .font(.system(size: 14))
    }
    
    private var actionsButtonRow: some View {
        HStack {
            MediaActionButton(
                label: "My List",
                iconName: "plus"
            )
            MediaActionButton(
                label: "Rate",
                iconName: "hand.thumbsup"
            )
            MediaActionButton(
                label: "Recommand",
                iconName: "paperplane"
            )
        }
    }
    
    private var optionsSection: some View {
        HStack(spacing: 16) {
            SelectableHeader(
                title: "Episodes",
                isSelected: .constant(selectedOption == .episodes),
                onTap: { selectedOption = .episodes }
            )
            SelectableHeader(
                title: "More Like This",
                isSelected: .constant(selectedOption == .more),
                onTap: { selectedOption = .more }
            )
            SelectableHeader(
                title: "Trailers & More",
                isSelected: .constant(selectedOption == .trailers),
                onTap: { selectedOption = .trailers }
            )
        }
    }
}

#Preview {
    MediaDetails(media: previewMediums[0])
}
