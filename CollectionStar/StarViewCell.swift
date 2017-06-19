//
//  StarViewCell.swift
//  CollectionStar
//
//  Created by DinhTien on 6/15/17.
//  Copyright © 2017 DinhTien. All rights reserved.
//

import UIKit

class StarViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgStar1: UIImageView!
    @IBOutlet weak var imgStar2: UIImageView!
    @IBOutlet weak var imgStar3: UIImageView!
    @IBOutlet weak var imgStar4: UIImageView!
    @IBOutlet weak var imgStar5: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
