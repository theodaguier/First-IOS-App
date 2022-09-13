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

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0){
            Text("VISA")
                .font(.title)
                .fontWeight(.black)
            Text("Salary")
            Text("$2,230")
                .fontWeight(.bold)
            Text("**6917")
                .fontWeight(.thin)
        }
        .padding(.all)
        .frame(width: 148.0, height: 170.0)
        .background(LinearGradient(
            gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.9166666865348816, green: 0.9166666865348816, blue: 0.9166666865348816, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.6980392336845398, green: 0.8156862854957581, blue: 0.8078431487083435, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
            endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
        .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
    }
}
