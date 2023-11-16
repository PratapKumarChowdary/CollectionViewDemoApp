//
//  ViewController.swift
//  CollectionViewMovieApp
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 4/20/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //create a cell
        let movieCell = collectionViewOL.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        // populate the cell
        movieCell.assignMovie(movie:movies[indexPath.row])
        
        
        
        
        return movieCell
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOL.text = "Title: \(movies[indexPath.row].title)"
        yearReleasedOL.text = "Year Released: \(movies[indexPath.row].releasedYear)"
        ratingOL.text = "Rating: \(movies[indexPath.row].movieRating)"
        boxOfficeoL.text = "Revenue: \(movies[indexPath.row].boxOffice)"
    }
    

    
    @IBOutlet weak var collectionViewOL: UICollectionView!
    
    @IBOutlet weak var titleOL: UILabel!
    
    
    @IBOutlet weak var yearReleasedOL: UILabel!
    
    
    @IBOutlet weak var ratingOL: UILabel!
    
    @IBOutlet weak var boxOfficeoL: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionViewOL.delegate = self;
        collectionViewOL.dataSource = self;
        
    }
    
    


}

