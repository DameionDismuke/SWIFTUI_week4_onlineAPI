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

import SwiftUI

struct HomePage: View {
    
    
    //var movies: [popMovie] = popMovieList
    
    var body: some View {
        NavigationView {
            List(0..<20) { item in //turna HStack into a list with CMD + click
                NavigationLink(
                    destination: MovieDetailView, label: {
                        Image(systemName: "globe")
                        
                            .scaledToFit()
                        //.frame(height: 40)
                            .foregroundColor(.accentColor)
                        
                        
                        VStack { //creates a vertical stack
                            Text("This is be the name of the movie")
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                            
                            Text("Date of its release")
                                .font(.subheadline)
                            
                        }
                    })
                .navigationTitle("Popular Movies")//title of list
            }
            
            
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
