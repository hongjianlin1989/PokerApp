//
//  ContentView.swift
//  PokerApp
//
//  Created by Hongjian Lin on 6/29/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = WebViewModel(link: "http://barstool-poker.com")
    var body: some View {
        
        ZStack {
            SwiftUIWebView(viewModel: model)
            if !model.didFinishLoading {
                ProgressView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
