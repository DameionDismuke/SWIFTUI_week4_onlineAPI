//
//  MovieDetailView.swift
//  Wk4_doubleAPI_dame
//
//  Created by Dameion Dismuke on 1/9/23.
//

import SwiftUI

struct MovieDetailView: View {
    
    
    @ObservedObject var movieDV = ViewModel()
    let aMovie: Results!
    
    var body: some View {
        
        
        VStack {
            
            /*
             AsyncImage(url:URL(string: "https://image.tmdb.org/t/p/original\(movie.poster_path)")) {
             image in image
             .resizable()
             .aspectRatio(contentMode: .fit)
             .frame(maxHeight:300)
             .cornerRadius(10)
             }
             placeholder: {
             ProgressView() //put placeholder, ProgressView() does a spinwheel
             }
             */
            //print("hello")
            Text(aMovie.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .foregroundColor(Color.white)
            
            
            
            HStack {
                //String(format: "%.2f", float) to  cut down by 2 decimal places
                Label(String(format: "%.2f", aMovie.popularity), systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.white)
                
                Text(aMovie.release_date)
                    .font(.subheadline)
                    .foregroundColor(.white)
            }
            
            Text(aMovie.overview)
                .font(.body)
                .padding()
                .foregroundColor(.white)
            
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
        //{movieDV.fetchMDV()}
        .background(
            
            AsyncImage(url:URL(string: "https://image.tmdb.org/t/p/original\(aMovie.poster_path)")) {
                image in image
                    .resizable()
                    .blur(radius: 2)
                    .frame(height: 550)
                
            }
            placeholder: {
                ProgressView() //put placeholder, ProgressView() does a spinwheel
            })
        
        
        /*
         }.onAppear()
         {movieDV.fetchMDV()} */
    }
}

    /*
struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
} */
