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
        /* 1 */  Movie.init(name: "The 400 Blows (1959)"),
        /* 2 */  Movie.init(name: "The Meg"),
        /* 3 */  Movie.init(name: "The Fate of the Furious"),
        /* 4 */  Movie.init(name: "Mechanic"),
        /* 5 */  Movie.init(name: "The Expendables 3"),
        /* 6 */  Movie.init(name: "Hummingbird"),
        /* 7 */  Movie.init(name: "Parker"),
        /* 8 */  Movie.init(name: "Truth in 24 II"),
        /* 9 */  Movie.init(name: "Crank"),
        /* 10 */ Movie.init(name: "The Pink Panther"),
        /* 11 */ Movie.init(name: "Chaos"),
        /* 12 */ Movie.init(name: "London"),
        /* 13 */ Movie.init(name: "Transporter 2"),
        /* 14 */ Movie.init(name: "Revolver"),
        /* 15 */ Movie.init(name: "War"),
        /* 16 */ Movie.init(name: "Gridiron Gang"),
        /* 17 */ Movie.init(name: "Death Race"),
        /* 18 */ Movie.init(name: "Turn It Up"),
        /* 19 */ Movie.init(name: "Skyscraper"),
        /* 20 */ Movie.init(name: "Fighting with My Family"),
        /* 21 */ Movie.init(name: "Hobbs & Shaw"),
        /* 22 */ Movie.init(name: "Jumanji: The Next Level"),
        /* 21 */ Movie.init(name: "Jungle Cruise"),
        /* 22 */ Movie.init(name: "Free Guy"),
        /* 23 */ Movie.init(name: "Red Notice"),
        /* 24 */ Movie.init(name: "League of Super-Pets"),
        /* 25 */ Movie.init(name: "Black Adam"),
        // images_poster
//                 Movie.init(image_poster: UIImage(named: "String"))
                 Movie.init(image_poster: UIImage(named: "Camera"))
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
//        Movie.init(image_poster: UIImage(named: "Camera")),
//        Movie.init(image_poster: UIImage(named: "AppIcon")),
        //
        
        ]
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
    
    init(name: String? = nil, details: String? = nil, rate: Double? = nil, date: Date? = nil, image_icon: UIImage? = nil, image_poster: UIImage? = nil, is_fav: Bool = false, is_watch_list: Bool = false) {
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

