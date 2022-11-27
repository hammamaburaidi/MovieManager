//
//  WatchlistVC.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 26.11.2022.
//

import UIKit

class WatchlistVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var arrWatchlist = [watchlistMovie]()
    @IBOutlet weak var lbltableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbltableview.delegate = self
        lbltableview.dataSource = self
        
        arrWatchlist.append(watchlistMovie.init(name: "Matrix", photo: UIImage(named: "Camera")!))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrWatchlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "watchListCell") as! WatchlistCell
        let data = arrWatchlist[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

struct watchlistMovie {
    let name: String
    let photo: UIImage
}
