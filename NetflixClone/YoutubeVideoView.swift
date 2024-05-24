//
// Created for NetflixClone
//

import SwiftUI
import WebKit

struct YoutubeVideoView: UIViewRepresentable {
    
    var youtubeVideoID: String
    
    init(id: String) {
        self.youtubeVideoID = id
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let path = "https://www.youtube.com/embed/\(youtubeVideoID)"
        guard let url = URL(string: path) else { return }
        
        uiView.load(.init(url: url))
    }
}

#Preview {
    YoutubeVideoView(id: "wtJPe1ksS6E")
}
