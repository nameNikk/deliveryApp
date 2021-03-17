//
//  GroupCell.swift
//  deliveryAp
//
//  Created by Никита Макаренко on 15.03.2021.
//

import UIKit

class GroupCell: UICollectionViewCell {

    @IBOutlet weak var nameGroup: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.contentView.backgroundColor = .white
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(group:Group,isSelected:Bool)  {
        self.nameGroup.text = group.name
        if isSelected{
            self.contentView.backgroundColor = .cyan
        } else{
            self.contentView.backgroundColor = .white
        }
    }
    
    
}
