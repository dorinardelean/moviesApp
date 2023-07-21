//
//  DetailsViewController.swift
//  moviesApp
//
//  Created by dorin.ardelean on 21.07.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var releaseYear: UILabel!
    @IBOutlet weak var duration: UILabel!
    @IBOutlet weak var coverPhoto: UIImageView!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var genres: UILabel!
    @IBOutlet weak var starIcon: UIImageView!
    @IBOutlet weak var movieRating: UILabel!
    
    //Variables used when passing over data from ListVC
    var coverPhotoImage = UIImage()
    var release = ""
    var featureTitle = ""
    var rating = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coverPhoto.image = coverPhotoImage
        releaseYear.text = release
        movieTitle.text = featureTitle
        movieRating.text = rating
    }
}
