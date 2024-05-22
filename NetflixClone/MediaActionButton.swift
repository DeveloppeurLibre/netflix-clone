//
// Created for NetflixClone
//

import SwiftUI

struct MediaActionButton: View {
    
    let label: String
    let iconName: String
    
    var body: some View {
        Button {
            // A compléter
        } label: {
            VStack(spacing: 12) {
                Image(systemName: iconName)
                    .foregroundStyle(Color.white)
                    .font(.system(size: 24, weight: .medium))
                Text(label)
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 12))
            }
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 24)
    }
}

#Preview {
    MediaActionButton(label: "Preview Button", iconName: "paperplane")
        .padding()
        .background(Color.black)
}
