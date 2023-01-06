//
//  ContentView.swift
//  Wk4SwiftUI_Dame
//
//  Created by Dameion Dismuke on 1/5/23.
//
/// # Week 4 Assignment
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

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
