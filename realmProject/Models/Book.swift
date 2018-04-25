//
//  Book.swift
//  realmProject
//
//  Created by Artemii Shabanov on 25.04.2018.
//  Copyright © 2018 C3G9. All rights reserved.
//

import Foundation
import RealmSwift

class Book: Object {
    @objc dynamic let id = nextBookID()
    @objc dynamic var name = ""
    @objc dynamic var pubYear = 2000
    @objc dynamic var picAuthor: String? = nil
    @objc dynamic var author = ""
    @objc dynamic var comment: String? = nil
    @objc dynamic var pubHouse: PublishingHouse? = nil
    let genres = List<Genre>()
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

func nextBookID() -> Int {
    let realm = try! Realm()
    return (realm.objects(Book.self).max(ofProperty: "id") as Int? ?? 0) + 1
}
