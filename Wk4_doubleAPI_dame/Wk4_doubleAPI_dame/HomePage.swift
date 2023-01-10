//
//  HomePage.swift
//  Wk4_doubleAPI_dame
//
//  Created by Dameion Dismuke on 1/9/23.
//
/*
 Creat an app using SwiftUI
 In this app use the public api themovieDB.org
 create your account to get the public key to use the apis.
 
 ## App Functionality
 
 This app will consist of two pages
 
 - Home-page:
 This will show the list of most popular movies
 
 - Detail-page:
 By clicking on any movie from the list your app should open up the detail page. This detail page should show the movie poster, title and description that you can receive from api.
 
 - APIs:
 Try to use two apis, one for home page to get the list of popular movies.
 Another detail api for detail page to get the detail of selected movie.
 
 ## Reference:
 
 MY KEY: 653c931d946bb2a9870f4ed725ecd322
 
 popular api endpoint:
 https://api.themoviedb.org/3/movie/popular?api_key=<<api_key>>&language=en-US&page=1
 
 movie detail api endpoint:
 https://api.themoviedb.org/3/movie/{movie_id}?api_key=<<api_key>>&language=en-US
 */
// https://image.tmdb.org/t/p/original/ + poster_image in order to get the images
// "https://image.tmdb.org/t/p/original\(movie.poster_path)"

import SwiftUI

struct HomePage: View {
    
    
    @ObservedObject var moviesVM = ViewModel()
    
    var body: some View {
        NavigationView {
            List(moviesVM.movie, id: \.id) { movie in //turn HStack into a list with CMD + click
                NavigationLink( destination: MovieDetailView(aMovie: movie), label: {
                    AsyncImage(url:URL(string: "https://image.tmdb.org/t/p/original\(movie.poster_path)")){
                        image in image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .foregroundColor(.accentColor)
                        
                    } placeholder: {
                        ProgressView() //put placeholder
                    }
                    
                    VStack(alignment: .leading ) { //creates a vertical stack
                        Text(movie.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        
                        Text(movie.release_date)
                            .font(.subheadline)
                        
                    }
                })
                .navigationTitle("Popular Movies")//title of list
            }
            
        }
        .onAppear()
        {moviesVM.fetch()}
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
}
