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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        watchlistBtn.titleLabel?.text = ""
        favBtn.titleLabel?.text = ""

    }
    
    @IBAction func searchBtnPressed(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func watchlistbtnPressed(_ sender: Any) {
    }
    @IBAction func favBtnPressed(_ sender: Any) {
    }
    
}
