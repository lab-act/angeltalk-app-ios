//
//  Category.swift
//  AngelTalkIOS
//
//  Created by bugatti on 2017. 7. 31..
//  Copyright © 2017년 sds. All rights reserved.
//

import RealmSwift

class Category: Object {
    dynamic var number = ""
    dynamic var name = ""
    dynamic var icon: UIImage? // Properties can be optional
    let cards = List<Card>()
}
