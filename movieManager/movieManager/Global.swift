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
        // Static Movie's Data Without using API ( I haven't studied API topic "YET" )
        /// Movie 1
        Movie.init(name: "The Meg", details: "Previously thought to be extinct, a massive creature attacks a deep-sea submersible, leaving it disabled and trapping the crew at the bottom of the Pacific. With time running out, a visionary oceanographer recruits rescue diver Jonas Taylor to save the crew and the sea itself from an unimaginable threat -- a 75-foot-long prehistoric shark known as the Megalodon.", rate: "4.7", date: "29.11.2022", image_icon: UIImage(named: "TheMegPoster"), image_poster: UIImage(named: "TheMegPoster"), is_fav: false, is_watch_list: false),
                 
        /// Movie 2
        Movie(name: "Fate of the Furious", details: "With Dom and Letty married, Brian and Mia retired and the rest of the crew exonerated, the globe-trotting team has found some semblance of a normal life. They soon face an unexpected challenge when a mysterious woman named Cipher forces Dom to betray them all. Now, they must unite to bring home the man who made them a family and stop Cipher from unleashing chaos.", rate: "4.1", date: "17.03.2016", image_icon: UIImage(named: "FAFPoster"), image_poster: UIImage(named: "FAFPoster"), is_fav: false, is_watch_list: false),
        
        /// Movie 3
        Movie(name: "Expendables", details: "The story follows the mercenary group known as The Expendables as they conflict with ruthless arms dealer Conrad Stonebanks, the Expendables co-founder, who is determined to destroy the team. The film premiered in London on August 4, 2014, and was released theatrically by Lionsgate on August 15, 2014. Unlike the first two films in the franchise, The Expendables 3 received a PG-13 rating instead of an R rating, which upset many fans of the franchise.", rate: "5.0", date: "28.04.2018", image_icon: UIImage(named: "ExpendablesPsoter"), image_poster: UIImage(named: "ExpendablesPsoter"), is_fav: false, is_watch_list: false)
        ]
}


class Movie {
    
    var name: String?
    var details: String?
    var rate: String?
    var date: String?
    var image_icon: UIImage?
    var image_poster: UIImage?
    var is_fav: Bool = false
    var is_watch_list: Bool = false
    
    init(name: String? = nil, details: String? = nil, rate: String? = nil, date: String? = nil, image_icon: UIImage? = nil, image_poster: UIImage? = nil, is_fav: Bool = false, is_watch_list: Bool = false) {
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

