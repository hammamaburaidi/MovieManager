//
//  SearchVC.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 25.11.2022.
//

import UIKit

class SearchVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    var objects: [Movie] = Global.movies
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var lbltableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lbltableView.dataSource = self
        lbltableView.delegate = self
        searchBar.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchCell", for: indexPath)
        let obj = objects[indexPath.row]
        
        cell.textLabel?.text = obj.name
        
        return cell
    }
    
    // Search Bar Config
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        objects = Global.movies.filter({ $0.name?.lowercased().starts(with: searchText.lowercased()) ?? false })
        
        self.lbltableView.reloadData()
    }
    
    // When user select a movie from table
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let obj = objects[indexPath.row]
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "detailsID") as! DetailsVC
        vc.object = obj
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
