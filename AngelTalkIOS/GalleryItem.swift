//
//  GalleryItem.swift
//  AngelTalk
//
//  Created by 신황규_23234_솔루션개발그룹_Gerard on 2/9/17.
//  Copyright © 2017 sds. All rights reserved.
//

import Foundation

class GalleryItem {
    
    var itemImage: String
    var itemLabel: String
    var itemBackground: String
    
    init(dataDictionary:Dictionary<String,String>) {
        itemImage = dataDictionary["itemImage"]!
        itemLabel = dataDictionary["itemLabel"]!
        itemBackground = dataDictionary["itemBackground"]!
    }
    
    class func newGalleryItem(_ dataDictionary:Dictionary<String,String>) -> GalleryItem {
        return GalleryItem(dataDictionary: dataDictionary)
    }
    
}
