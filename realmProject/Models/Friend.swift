//
//  Friend.swift
//  realmProject
//
//  Created by Artemii Shabanov on 25.04.2018.
//  Copyright © 2018 C3G9. All rights reserved.
//

import Foundation
import RealmSwift

class Friend: Object {
    @objc dynamic let id = nextFriendID()
    @objc dynamic var FIO = ""
    @objc dynamic var phoneNumber = 0
    @objc dynamic var socialNumber: String? = nil
    @objc dynamic var email = ""
    @objc dynamic var comment:String? = nil
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

func nextFriendID() -> Int {
    let realm = try! Realm()
    return (realm.objects(Friend.self).max(ofProperty: "id") as Int? ?? 0) + 1
}
