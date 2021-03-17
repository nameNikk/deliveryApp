//
//  MenuViewController.swift
//  deliveryAp
//
//  Created by Никита Макаренко on 12.03.2021.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var groupsCV: UICollectionView!
    
    
    var group:Group!
    var selectedGroup:Group?{
        didSet{
            if let groups = self.selectedGroup{
                self.title = groups.name
            }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.collectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        self.groupsCV.register(UINib(nibName: "GroupCell", bundle: nil), forCellWithReuseIdentifier: "GroupCell")
        self.groupsCV.dataSource = self
        self.groupsCV.delegate = self
        
        if let groups = group.groups, groups.count > 0{
            selectedGroup = groups.first!
        }else{
            selectedGroup = group
        }
        
    }
}


extension MenuViewController: UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{


func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
    if collectionView == groupsCV{
      if let groups = group.groups{
        return groups.count
        }else{
            return 0
        }
    }else{
       if let products = selectedGroup?.products{
            return products.count
       }else{
        return 0
       }
       
    }
   
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    if collectionView == groupsCV{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCell", for: indexPath) as! GroupCell
        let group = self.group.groups![indexPath.item]
        
        let isSelected = group.name == selectedGroup!.name
        
        
        cell.setupCell(group: group,isSelected: isSelected)
        return cell
        
    } else{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell

        let product = self.selectedGroup?.products![indexPath.item]
        cell.setupCell(product: product!)
        return cell
    }
    
}

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == groupsCV{
            
            let groupName = self.group.groups![indexPath.item].name
            let width = groupName.widthOfString(usingFont: UIFont.systemFont(ofSize:17))
            
            return CGSize(width: width + 20, height: collectionView.frame.height)
            
        }else{
            return CGSize(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.width)
        }
       
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == groupsCV{
            self.selectedGroup = self.group.groups![indexPath.item]
            self.groupsCV.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            self.groupsCV.reloadData()
            self.collectionView.scrollToItem(at: IndexPath(item:0,section: 0), at: .centeredHorizontally, animated: true)
            self.collectionView.reloadData()
        }
    }

}

