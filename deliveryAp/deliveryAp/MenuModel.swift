//
//  MenuModel.swift
//  deliveryAp
//
//  Created by Никита Макаренко on 12.03.2021.
//

import Foundation
import UIKit



struct Group {
    var groups: [Group]?
    var name: String
    var products: [Product]?
    var image: UIImage
}

struct Product {
    var name: String
    var price: Float
    var image: UIImage
    
}

class Menu {
    
    var groups = [Group]()
    
    init() {
        setup()
    }
    
    func setup(){
        
        
        let p1 = Product(name: "Пицца1", price: 100,image: UIImage(named: "p1")!)
        let p2 = Product(name: "Пицца2", price: 120,image: UIImage(named: "p1")!)
        let p3 = Product(name: "Пицца3", price: 90,image: UIImage(named: "p1")!)
        
        let p4 = Product(name: "Пицца4", price: 100,image: UIImage(named: "p1")!)
        let p5 = Product(name: "Пицца5", price: 120,image: UIImage(named: "p1")!)
        let p6 = Product(name: "Пицца6", price: 90,image: UIImage(named: "p1")!)
        
        let p7 = Product(name: "Пицца7", price: 100,image: UIImage(named: "p1")!)
        let p8 = Product(name: "Пицца8", price: 120,image: UIImage(named: "p1")!)
        let p9 = Product(name: "Пицца9", price: 90,image: UIImage(named: "p1")!)
        
        let pizzaGroupIn1 = Group(groups: nil, name: "пицца 25см", products: [p1,p2,p3], image: UIImage(named: "p1")!)
        let pizzaGroupIn2 = Group(groups: nil, name: "пицца 40см", products: [p4,p5,p6], image: UIImage(named: "p1")!)
        let pizzaGroupIn3 = Group(groups: nil, name: "пицца 260см", products: [p7,p8,p9], image: UIImage(named: "p1")!)
        
        let pizzaGroup = Group(groups:[pizzaGroupIn1,pizzaGroupIn2,pizzaGroupIn3], name: "пицца", products: nil, image:UIImage(named: "p1")!)

        
        
        
        let b1 = Product(name: "Бургер1", price: 100,image: UIImage(named: "p3")!)
        let b2 = Product(name: "Бургер2", price: 120,image: UIImage(named: "p3")!)
        let b3 = Product(name: "Бургер3", price: 90,image: UIImage(named: "p3")!)
        
        let b4 = Product(name: "Бургер4", price: 100,image: UIImage(named: "p3")!)
        let b5 = Product(name: "Бургер5", price: 120,image: UIImage(named: "p3")!)
        let b6 = Product(name: "Бургер6", price: 90,image: UIImage(named: "p3")!)
        
        let b7 = Product(name: "Бургер7", price: 100,image: UIImage(named: "p3")!)
        let b8 = Product(name: "Бургер8", price: 120,image: UIImage(named: "p3")!)
        let b9 = Product(name: "Бургер9", price: 90,image: UIImage(named: "p3")!)
        
        let burgerGroupIn1 = Group(groups: nil, name: "Бургер такой", products: [b1,b2,b3], image: UIImage(named: "p2")!)
        let burgerGroupIn2 = Group(groups: nil, name: "Бургер секой", products: [b4,b5,b6], image: UIImage(named: "p2")!)
        let burgerGroupIn3 = Group(groups: nil, name: "Бургер этакий", products: [b7,b8,b9], image: UIImage(named: "p2")!)
        
        let burgerGroup = Group(groups:[burgerGroupIn1,burgerGroupIn2,burgerGroupIn3], name: "Бургер ", products: nil, image:UIImage(named: "p3")!)
        
        groups.append(pizzaGroup)
        groups.append(burgerGroup)
        
        
//
//        let products1 = [p1,p2,p3]
//        let products2 = [p4,p5,p6]
//        let products3 = [p7,p8,p9]
        
//        let g1 = Group(name: "Пицца1", products: products1)
//        let g2 = Group(name: "Бургеры1", products: products2)
//        let g3 = Group(name: "Роллы1", products: products3)
//        let g4 = Group(name: "Пицца2", products: products1)
//        let g5 = Group(name: "Бургеры2", products: products2)
//        let g6 = Group(name: "Роллы2", products: products3)
        
//        self.groups = [g1,g2,g3,g4,g5,g6]
        
        
        
    }
}

extension String{
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = (self as NSString).size(withAttributes: fontAttributes)
        return ceil(size.width)
    }
}
