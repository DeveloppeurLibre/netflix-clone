//
// Created for NetflixClone
//

import SwiftUI

struct SelectableHeader: View {
    
    let title: String
    @Binding var isSelected: Bool
    let onTap: () -> Void
    
    var body: some View {
        Text(title)
            .foregroundStyle(isSelected ? .white : .gray)
            .font(.system(size: 18, weight: .bold))
            .padding(.top, 16)
            .overlay(alignment: .topLeading) {
                Rectangle()
                    .foregroundStyle(Color(red: 0.82, green: 0.184, blue: 0.145))
                    .frame(height: 4)
                    .frame(width: isSelected ? .infinity : 0)
            }
            .onTapGesture {
                withAnimation(.easeOut(duration: 0.25)) {
                    onTap()
                }
            }
    }
}

#Preview {

    struct PreviewWrapper: View {
        
        @State var isSelected: Bool = true
        
        var body: some View {
            SelectableHeader(
                title: "Preview Header",
                isSelected: $isSelected,
                onTap: { isSelected.toggle() }
            )
            .padding()
            .background(Color.black)
        }
    }
    
    return PreviewWrapper()
}
