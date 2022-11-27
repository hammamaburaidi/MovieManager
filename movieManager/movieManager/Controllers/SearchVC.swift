//
//  SearchVC.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 25.11.2022.
//

import UIKit

class SearchVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    var data = Data()
    var arrName = ["Hammam","Student","University","Computer"]
    var filteredArray: [String]!
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var lbltableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbltableView.dataSource = self
        lbltableView.delegate = self
        searchBar.delegate = self
        
        filteredArray = arrName
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchCell", for: indexPath)
        cell.textLabel?.text = filteredArray[indexPath.row]
        return cell
    }
    
    // Search Bar Config
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filteredArray = []
        if searchText == "" {
            filteredArray = arrName
        } else{
            for name in arrName {
                if name.contains(searchText){
                    filteredArray.append(name)
                }
            }
        }
        self.lbltableView.reloadData()
    }
    
    // When user select a movie from table
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcdetails = storyboard?.instantiateViewController(withIdentifier: "detailsID") as! DetailsVC
        present(vcdetails, animated: false)
    }
    
}
