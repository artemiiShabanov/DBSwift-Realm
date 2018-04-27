//
//  Genre.swift
//  realmProject
//
//  Created by Artemii Shabanov on 25.04.2018.
//  Copyright © 2018 C3G9. All rights reserved.
//

import Foundation
import RealmSwift

class Genre: Object {
    @objc dynamic let id = nextGenreID()
    @objc dynamic var name = ""
    @objc dynamic var parentGenre: Genre? = nil
    let books = List<Book>()
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

func nextGenreID() -> Int {
    return (realm.objects(Genre.self).max(ofProperty: "id") as Int? ?? 0) + 1
}
