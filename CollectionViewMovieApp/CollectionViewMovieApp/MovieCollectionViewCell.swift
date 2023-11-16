//
//  MovieCollectionViewCell.swift
//  CollectionViewMovieApp
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 4/20/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    
    
    @IBOutlet weak var ImageOL: UIImageView!
    
    
    func assignMovie(movie: Movie){
        ImageOL.image = movie.image
    }
    
    
    
    
}
