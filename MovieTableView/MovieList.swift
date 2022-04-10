//
//  MovieList.swift
//  MovieTableView
//
//  Created by Tri Le on 3/24/22.
//

import Foundation

// Movie List Model to handle multiple operations on a movie list such as: Add, Remove, or Change Position in the list
class MovieList {
    var movies: [Movie] = []
    
    init(autofilled: Bool) {
        if autofilled {
            let movieTitles = ["Eternals", "Dune", "No Time To Die", "Last Night in Soho", "Ron's Done Wrong", "Halloween Kills", "Venom", "Antlers", "The Addams Family 2"]
            
            var movie: Movie
            for title in movieTitles {
                movie = Movie(title: title)
                self.movies.append(movie)
            }
        }
    }
    
    // Add new movie
    func addMovie(movie: Movie) {
        movies.append(movie)
    }
    
    // Remove existing movie
    func removeMovie(indexPath: IndexPath) {
        movies.remove(at: indexPath.row)
    }
    
    // Change position of a movie item in the movie list
    func moveMovie(fromIndexPath: IndexPath, toIndexPath: IndexPath) {
        let temp = movies[fromIndexPath.row]
        removeMovie(indexPath: fromIndexPath)
        movies.insert(temp, at: toIndexPath.row)
    }
}
