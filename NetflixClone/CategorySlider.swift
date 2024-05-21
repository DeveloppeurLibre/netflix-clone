//
// Created for NetflixClone
//

import SwiftUI

struct CategorySlider: View {
    
    let title: String
    let mediums: [Media]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .foregroundStyle(Color.white)
                .font(.system(size: 18, weight: .semibold))
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(previewMediums) { media in
                        MediaCell(media: media)
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    CategorySlider(title: "Preview Category", mediums: previewMediums)
}
