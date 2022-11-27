//
//  DetailsVC.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 27.11.2022.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var watchlistBtn: UIButton!
    @IBOutlet weak var favBtn: UIButton!
    @IBOutlet weak var searchButton: UIBarButtonItem!
    
    var object: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindData()
    }
    
    func bindData() {
        guard let object = object else { return }
        
        self.title = object.name
        
        watchlistBtn.setTitle("", for: UIControl.State.normal)
        favBtn.setTitle("", for: UIControl.State.normal)
        
        if (object.is_fav == false) {
            favBtn.setImage(UIImage(systemName: "heart"), for: UIControl.State.normal)
        } else {
            favBtn.setImage(UIImage(systemName: "heart.fill"), for: UIControl.State.normal)
        }
    }
    
    @IBAction func searchBtnPressed(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func watchlistbtnPressed(_ sender: Any) {
        
    }
    @IBAction func favBtnPressed(_ sender: Any) {
        // Add movie to fav list uisng API
        guard let object = object else { return }
        
        object.is_fav = !object.is_fav
        
        bindData()
    }
    
}
