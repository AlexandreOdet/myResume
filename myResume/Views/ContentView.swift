//
//  ContentView.swift
//  myResume
//
//  Created by Alexandre Odet on 19/05/2020.
//  Copyright © 2020 Alexandre Odet. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Image("swiftui-logo")
                .clipShape(Circle())
              .shadow(radius: 10)
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
            Text("Hello, World!")
            Text("I'm Alex a 27 years old iOS Developer and I'm having fun with SwiftUI for this app :)").multilineTextAlignment(.center)
            Divider()
                    Button(action: {
                        print("Button")
                        ProjectView()
                    }) {
                        Text("My Projects")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
