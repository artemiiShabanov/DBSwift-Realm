//
//  Publishing house.swift
//  realmProject
//
//  Created by Artemii Shabanov on 25.04.2018.
//  Copyright © 2018 C3G9. All rights reserved.
//

import Foundation
import RealmSwift

class PublishingHouse: Object {
    @objc dynamic let id: Int = nextHouseID()
    @objc dynamic var name: String = ""

    override static func primaryKey() -> String? {
        return "id"
    }
}

func nextHouseID() -> Int {
    let realm = try! Realm()
    return (realm.objects(PublishingHouse.self).max(ofProperty: "id") as Int? ?? 0) + 1
}

