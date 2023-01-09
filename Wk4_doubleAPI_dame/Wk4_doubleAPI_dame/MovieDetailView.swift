//
//  MovieDetailView.swift
//  Wk4_doubleAPI_dame
//
//  Created by Dameion Dismuke on 1/9/23.
//

import SwiftUI

struct MovieDetailView: View {
    
    
    @ObservedObject var movieDV = ViewModel()
    
    
    var body: some View {
        
        List(movieDV.movie, id: \.id)
        { movie in
            VStack {
                
                AsyncImage(url:URL(string: "https://image.tmdb.org/t/p/original\(movie.poster_path)"))
                    //.resizable()
                    .scaledToFit()
                    
                //print("hello")
                Text(movie.title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                HStack {
                    Label("/(movie.popularity)", systemImage: "eye.fill")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text(movie.release_date)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Text(movie.overview)
                    .font(.body)
                    .padding()
                
                /*Link(destination: movie.url, label: {
                    Text("Watch Now")
                        .bold()
                        .font(.title2)
                        .frame(width: 100, height: 50)
                        .background(Color(.systemRed))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })*/
            }
            //.onAppear()
            //{movieDV.fetch()}
            
            
        }.onAppear()
        {movieDV.fetchMDV()}
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
