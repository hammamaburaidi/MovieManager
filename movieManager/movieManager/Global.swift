//
//  Data.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 27.11.2022.
//

import Foundation
import UIKit

class Global {
    
    static var movies = [
        Movie.init(name: "Movie 1"),
        Movie.init(name: "Movie 2"),
        Movie.init(name: "Movie 3"),
        Movie.init(name: "Movie 4"),
        Movie.init(name: "Movie 5"),
        Movie.init(name: "Movie 6"),
        Movie.init(name: "Movie 7"),
        Movie.init(name: "Movie 8")
    ]
//    var dataArray = ["Hammam","Junior","iOS","Programmer","Still","Learning","Needs","Staj"]
    
}


class Movie {
    
    var name: String?
    var details: String?
    var rate: Double?
    var date: Date?
    var image_icon: UIImage?
    var image_poster: UIImage?
    var is_fav: Bool = false
    var is_watch_list: Bool = false

    init(name: String? = nil) {
        self.name = name
    }
    
    init(name: String? = nil, details: String? = nil, rate: Double? = nil, date: Date? = nil, image_icon: UIImage? = nil, image_poster: UIImage? = nil, is_fav: Bool, is_watch_list: Bool) {
        self.name = name
        self.details = details
        self.rate = rate
        self.date = date
        self.image_icon = image_icon
        self.image_poster = image_poster
        self.is_fav = is_fav
        self.is_watch_list = is_watch_list
    }
}

