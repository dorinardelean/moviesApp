//
//  MovieData.swift
//  moviesApp
//
//  Created by dorin.ardelean on 28.07.2023.
//

import UIKit

class MovieData: Codable {
    let original_title: String
    let poster_path: String
    let vote_average: Double
    let release_date: String
    
    init(original_title: String, poster_path: String, vote_average: Double, release_date: String) {
        self.original_title = original_title
        self.poster_path = poster_path
        self.vote_average = vote_average
        self.release_date = release_date
    }
}
