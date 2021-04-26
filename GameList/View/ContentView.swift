//
//  ContentView.swift
//  GameList
//
//  Created by ? on 16/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            GameList()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Game")
                }
            Profile()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Creator")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
