//
//  ContentView.swift
//  First-IOS-App
//
//  Created by Théo Daguier on 13/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        CardView()
                    }
                    .padding()
                }
                .navigationTitle("All Accounts")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

