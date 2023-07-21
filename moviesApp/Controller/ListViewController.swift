//
//  ViewController.swift
//  moviesApp
//
//  Created by dorin.ardelean on 13.07.2023.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    //Mock data
    let movies = ["Top Gun", "Blade Runner", "Titanic"]
    let ratings = ["9.5", "8.3", "6.9"]
    let years = ["1985", "1982", "1997"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("test")
        //TODO: get stuff from sender and set here
        //TODO: implement networking layer (Alamofire, SDWebImage)
        //TODO: Add SwiftLint
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController
//        vc?.coverPhotoImage = UIImage(named: "defaultCover")!
//        vc?.release = years[indexPath.row]
//        vc?.featureTitle = movies[indexPath.row]
//        vc?.rating = ratings[indexPath.row]
//        self.navigationController?.pushViewController(vc!, animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as? TableViewCell else { return UITableViewCell() }
        
        //set cell details
        cell.movieTitle.text = movies[indexPath.row]
        cell.movieRating.text = ratings[indexPath.row]
        cell.releaseYear.text = years[indexPath.row]
        cell.posterThumbnail.image = UIImage(named: movies[indexPath.row])
        cell.starIcon.image = UIImage(systemName: "star.fill")
        cell.starIcon.tintColor = .orange
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
}
