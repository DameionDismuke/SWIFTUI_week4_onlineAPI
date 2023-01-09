//
//  popularMovies.swift
//  Wk4_doubleAPI_dame
//
//  Created by Dameion Dismuke on 1/9/23.
//

import Foundation
import SwiftUI



struct popMovie : Decodable {
    
    let results: [Results]
    
    
}

struct Results : Decodable {
    
    let id: Int
    let title: String
    let release_date: String
    let overview: String
    let popularity: Float
    let poster_path: String
    
    
}


class ViewModel: ObservableObject
{
    
    @Published var movie : [Results] = []
    
    
    func fetch() {
        guard let url1 = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=653c931d946bb2a9870f4ed725ecd322") else {
            return
        }
        guard let url2 = URL(string: "https://api.themoviedb.org/3/movie/{movie_id}?api_key=653c931d946bb2a9870f4ed725ecd322&language=en-US") else {
            return
        }
        let task1 = URLSession.shared.dataTask(with: url1) { [self]
            data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            //Convert to JSON
            do {
                let homePages = try JSONDecoder().decode(popMovie.self, from: data)
                DispatchQueue.main.async {
                    self.movie = homePages.results
                    print(self.movie)
                }
                
            }
            catch {
                print(error)
            }
            
        }
        let task2 = URLSession.shared.dataTask(with: url2) { [self]
            data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            //Convert to JSON
            do {
                let MDV = try JSONDecoder().decode(popMovie.self, from: data)
                DispatchQueue.main.async {
                    self.movie = MDV.results
                    print(self.movie)
                }
                
            }
            catch {
                print(error)
            }
            
        }
        task1.resume()
        task2.resume()
    }
}
