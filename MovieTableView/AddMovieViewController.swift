//
//  AddMovieViewController.swift
//  MovieTableView
//
//  Created by Tri Le on 4/10/22.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    // create a property for the segue prepare function from MovieTableViewController to pass to
    var movieList: MovieList!

    // Text field for entering new movie title to add
    @IBOutlet weak var newMovieTitle: UITextField!

    // Handle clicking Save button
    @IBAction func addNewMovie(_ sender: Any) {
        // Only add movie if title is not empty
        if !newMovieTitle.text!.isEmpty {
            let newMovie = Movie(title: newMovieTitle.text!)
            movieList.addMovie(movie: newMovie)
            // Go back to Movie Table View scene
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
