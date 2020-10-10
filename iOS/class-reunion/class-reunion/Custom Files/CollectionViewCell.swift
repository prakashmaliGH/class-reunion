//
//  CustomCollectionViewCell.swift
//  class-reunion
//
//  Created by Prakash Sundesha on 08/10/20.
//  Copyright © 2020 Prakash Sundesha. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
