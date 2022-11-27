//
//  FavoriteVC.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 26.11.2022.
//

import UIKit

class FavoriteVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var lbltableview: UITableView!
    var arrFavorite = [favoriteMoive]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbltableview.delegate = self
        lbltableview.dataSource = self
        
        arrFavorite.append(favoriteMoive.init(name: "Hammam", photo: UIImage(named: "Camera")!))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFavorite.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCell") as! FavoriteCell
        let data = arrFavorite[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

struct favoriteMoive {
    let name: String
    let photo: UIImage
}
