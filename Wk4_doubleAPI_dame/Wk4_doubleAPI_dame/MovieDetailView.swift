//
//  MovieDetailView.swift
//  Wk4_doubleAPI_dame
//
//  Created by Dameion Dismuke on 1/9/23.
//

import SwiftUI

struct MovieDetailView: View {
    
    
    // var movie: popMovie
    
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image()
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
            
            Text()
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack {
                Label("", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text()
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text()
                .font(.body)
                .padding()
            
            Link(destination: movie.url, label: {
                Text("Watch Now")
                    .bold()
                    .font(.title2)
                    .frame(width: 100, height: 50)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
