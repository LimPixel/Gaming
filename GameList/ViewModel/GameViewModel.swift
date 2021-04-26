//
//  NewsViewModel.swift
//  NewsAPI
//
//  Created by ? on 15/04/21.
//

import Foundation
import Combine
import SwiftyJSON

class GameViewModel: ObservableObject {
    @Published var dataGame = [Games]()
    
    init(){
        let url = "https://api.rawg.io/api/games?%C3%A5=1"
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!){ ( data, _, error) in
            // If error......
            if error != nil{
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data : data!)
            let items = json["results"].array!
            
            for i in items {
                let name = i["name"].stringValue
                let released = i["released"].stringValue
                let image = i["background_image"].stringValue
                
                DispatchQueue.main.async {
                    self.dataGame.append(Games(name: name, released: released, image: image))
                }
            }
        }.resume()
    }
}
