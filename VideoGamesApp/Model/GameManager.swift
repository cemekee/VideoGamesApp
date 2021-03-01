//
//  GameManager.swift
//  VideoGamesApp
//
//  Created by Cem Eke on 23.02.2021.
//

import Foundation

var gameItems = [GameItem]()

struct GameManager {
     func requestFunc() {
     
        
        let headers = [
            "x-rapidapi-key": "03187f0637msh1198d2e3f2c1525p1e03d4jsncb5a637efbf1",
            "x-rapidapi-host": "rawg-video-games-database.p.rapidapi.com"
        ]
        
        let request = NSMutableURLRequest(url: NSURL(string: "https://rawg-video-games-database.p.rapidapi.com/games")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                //Alert ver
            } else {
               // print(String(data: data!, encoding: .utf8)!)
               // String(data: data!, encoding: .utf8)!
               parse(json:data!)
                
            }
            
             
        })
        func parse(json: Data){
           let decoder = JSONDecoder()
           
           if let jsonGameItems = try? decoder.decode(GameItems.self, from:json) {
            gameItems = jsonGameItems.results
           }
            print(gameItems)
            
       }
        dataTask.resume()
    }
}
