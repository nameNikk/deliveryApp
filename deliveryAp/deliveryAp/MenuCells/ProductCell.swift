//
//  ProductCell.swift
//  deliveryAp
//
//  Created by Никита Макаренко on 12.03.2021.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var priceProduct: UILabel!
    
    @IBOutlet weak var productImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.productImage.image = nil
    }
    
    func setupCell(product: Product)  {
        self.productImage.image = product.image
        self.nameProduct.text = product.name
        self.priceProduct.text =
            String(product.price)
    }

}
