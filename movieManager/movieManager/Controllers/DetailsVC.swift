//
//  DetailsVC.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 27.11.2022.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imagePoster: UIImageView!
    @IBOutlet weak var watchlistBtn: UIButton!
    @IBOutlet weak var favBtn: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    //    @IBOutlet weak var searchButton: UIBarButtonItem!
    
    var object: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        bindData()
    }
    
    func bindData() {
        guard let object = object else { return }
        
        self.title = object.name
        imagePoster.image = object.image_poster
        descriptionLabel.text = object.details
        dateLabel.text = object.date
        rateLabel.text = object.rate
        movieTitleLabel.text = object.name
        
        watchlistBtn.setTitle("", for: UIControl.State.normal)
        favBtn.setTitle("", for: UIControl.State.normal)
        
        // For favorite button config
        if (object.is_fav == false) {
            favBtn.setImage(UIImage(systemName: "heart"), for: UIControl.State.normal)
        } else {
            favBtn.setImage(UIImage(systemName: "heart.fill"), for: UIControl.State.normal)
        }
        
        // For watchlish button config
        if (object.is_watch_list == false) {
            watchlistBtn.setImage(UIImage(systemName: "list.bullet.clipboard"), for: UIControl.State.normal)
        } else {
            watchlistBtn.setImage(UIImage(systemName: "list.bullet.clipboard.fill"), for: UIControl.State.normal)
        }
        
        
    }
    
    @IBAction func searchBtnPressed(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    // Add the movie to Watchlist catogery
    @IBAction func watchlistbtnPressed(_ sender: Any) {
        guard let object = object else { return }
        
        object.is_watch_list = !object.is_watch_list
        
        bindData()
    }
    // Add the movie to favorite list catogery
    @IBAction func favBtnPressed(_ sender: Any) {
        // Add movie to fav list
        guard let object = object else { return }
        
        object.is_fav = !object.is_fav
        
        bindData()
    }
    
}
