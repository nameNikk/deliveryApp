//
//  MainCell.swift
//  deliveryAp
//
//  Created by Никита Макаренко on 17.03.2021.
//

import UIKit

class MainCell: UICollectionViewCell {
    
    
    @IBOutlet weak var mainImg: UIImageView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(group:Group)  {
        self.mainImg.image = group.image
        self.mainLabel.text = group.name
    }

}
