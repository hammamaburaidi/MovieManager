//
//  FavoriteCell.swift
//  movieManager
//
//  Created by Hammam Aburaidi on 26.11.2022.
//

import UIKit

class FavoriteCell: UITableViewCell {

    @IBOutlet weak var lblMovieName: UILabel!
    @IBOutlet weak var imgs: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(photo: UIImage, name: String){
        imgs.image = photo
        lblMovieName.text = name
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
