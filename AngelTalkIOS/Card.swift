//
//  Card.swift
//  AngelTalkIOS
//
//  Created by bugatti on 2017. 7. 31..
//  Copyright © 2017년 sds. All rights reserved.
//

import RealmSwift

class Card: Object {
    dynamic var number = ""
    dynamic var title = ""
    dynamic var picture: UIImage? // Properties can be optional
}
