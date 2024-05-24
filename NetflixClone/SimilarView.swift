//
// Created for NetflixClone
//

import SwiftUI

struct SimilarView: View {
    
    let suggestions: [MediaPreview]
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(suggestions) { suggestion in
                MediaCell(media: suggestion)
            }
        }
    }
}

#Preview {
    SimilarView(
        suggestions: [
            MediaPreview(
                title: "Preview 1",
                coverURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kMhMKG3IVJV8HhMGK7GEY6X73bP.jpg"),
                percentageMatch: 0,
                year: "",
                synopsis: ""
            ),
            MediaPreview(
                title: "Preview 1",
                coverURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zat4C4cnFYFhFLW922VmcxobD9C.jpg"),
                percentageMatch: 0,
                year: "",
                synopsis: ""
            ),
            MediaPreview(
                title: "Preview 1",
                coverURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/j1yqOSVVskSYpYreNT0VeD1S3Dq.jpg"),
                percentageMatch: 0,
                year: "",
                synopsis: ""
            ),
            MediaPreview(
                title: "Preview 1",
                coverURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6uy8Le8X8qqvc5X7pSFn3BJA69M.jpg"),
                percentageMatch: 0,
                year: "",
                synopsis: ""
            ),
            MediaPreview(
                title: "Preview 1",
                coverURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xnFFz3etm1vftF0ns8RMHA8XdqT.jpg"),
                percentageMatch: 0,
                year: "",
                synopsis: ""
            ),
        ]
    )
        .padding()
        .frame(maxHeight: .infinity)
        .background(Color.black)
}
