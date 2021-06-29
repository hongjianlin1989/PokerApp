//
//  WebView.swift
//  PokerApp
//
//  Created by Hongjian Lin on 6/29/21.
//

import SwiftUI
import UIKit
import WebKit

struct WebView: UIViewRepresentable {
  

    func makeUIView(context: Context) -> WKWebView {
        WKWebView(frame: .zero)
    }

    func updateUIView(_ view: WKWebView, context: UIViewRepresentableContext<WebView>) {

        let request = URLRequest(url: URL(string: "http://barstool-poker.com")!)

        view.load(request)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
