//
//  GameDetail.swift
//  GameList
//
//  Created by ? on 16/04/21.
//

import SwiftUI
import SDWebImageSwiftUI


struct GameDetail: View {
    
    let game : Games
    
    var body: some View {
        ScrollView{
            VStack(alignment : .leading){
                WebImage(url: URL(string: game.image))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                
                VStack(alignment: .leading, spacing : 20){
                    Text(game.name)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(game.released)
                        .font(.body)
                }.padding()
            }
        }
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(game: Games(name: "", released: "", image: ""))
    }
}
