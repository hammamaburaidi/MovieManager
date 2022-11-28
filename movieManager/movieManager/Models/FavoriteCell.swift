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

    func setupCell(obj: Movie) {
        imgs.image = obj.image_icon ?? UIImage.init(systemName: "")
        lblMovieName.text = obj.name ?? "Not Available"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
