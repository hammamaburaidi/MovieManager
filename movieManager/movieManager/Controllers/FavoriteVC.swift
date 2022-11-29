//
//  FavoriteVC.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 26.11.2022.
//

import UIKit

class FavoriteVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var lbltableview: UITableView!
    
    var objects: [Movie] = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        objects = Global.movies.filter({ $0.is_fav })
        
        // Do any additional setup after loading the view.
        lbltableview.delegate = self
        lbltableview.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        objects = Global.movies.filter({ $0.is_fav })
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        objects = Global.movies.filter({ $0.is_fav })
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCell") as! FavoriteCell
        let obj = objects[indexPath.row]
        
        cell.setupCell(obj: obj)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
