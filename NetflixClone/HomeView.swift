//
// Created for NetflixClone
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                CategorySlider(title: "Ensemble TV Comedies", mediums: previewMediums)
                CategorySlider(title: "US TV Programs", mediums: previewMediums)
            }
            .padding(8)
            .padding(.top, 50)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .scrollIndicators(.hidden)
        .overlay(alignment: .top) {
            Rectangle()
                .frame(height: 100)
                .background(Material.ultraThinMaterial)
                .overlay(alignment: .bottom) {
                    ZStack {
                        HStack {
                            Text("For Quentin")
                                .font(.system(size: 24, weight: .bold))
                            Spacer()
                            Image(systemName: "airplayvideo")
                                .font(.system(size: 20, weight: .medium))
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 20, weight: .medium))
                        }
                        .foregroundStyle(Color.white)
                        .padding(20)
                        .background(Color.black.opacity(0.3))
                    }
                }
                .ignoresSafeArea()
        }
    }
}

#Preview {
    HomeView()
}
