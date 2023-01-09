//
//  popularMovies.swift
//  Wk4_doubleAPI_dame
//
//  Created by Dameion Dismuke on 1/9/23.
//

import Foundation



struct popMovie : Identifiable {
    
    let id: UUID
    let title: String
    let release_date: String
    let overview: String
    let popularity: Int
    let poster_path: String
    
    
}
