//
//  PhotoAlbumViewControllerCell.swift
//  Filistovich_Ruslan_Decoder_wh
//
//  Created by Ruslan on 10/27/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class PhotoAlbumViewControllerCell: UITableViewCell {
    @IBOutlet weak var photoAlbumImage: UIImageView!
    @IBOutlet weak var photoAlbumTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
