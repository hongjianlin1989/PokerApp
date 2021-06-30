//
//  ProgressLoadingView.swift
//  PokerApp
//
//  Created by Hongjian Lin on 6/30/21.
//

import SwiftUI
import UIKit

struct ActivityIndicator: UIViewRepresentable {

    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct ProgressLoadingView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                Image("Splash_BG")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 30)
                    .clipped()
                Image("stars")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 144, height: 144)
                    .clipped()
                Image("stool-outlined")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 144, height: 100)
                    .clipped()
                ActivityIndicator(isAnimating: .constant(true), style: .whiteLarge).offset(x: 0, y: 100)

            }
        }.edgesIgnoringSafeArea(.all)
       
    }
}

struct ProgressLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressLoadingView()
    }
}
