//
//  GalleryItemCollectionViewCell.swift
//  AngelTalk
//
//  Created by 신황규_23234_솔루션개발그룹_Gerard on 2/9/17.
//  Copyright © 2017 sds. All rights reserved.
//

import UIKit

class GalleryItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var itemImageView: UIImageView!
    @IBOutlet var itemLabelView: UILabel!
    
    func setGalleryItem(_ item:GalleryItem) {
        itemImageView.image = UIImage(named: item.itemImage)
        itemLabelView.text = NSLocalizedString(item.itemLabel, comment: "")
    }
    
}
