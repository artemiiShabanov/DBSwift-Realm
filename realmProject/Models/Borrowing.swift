//
//  Borrowing.swift
//  realmProject
//
//  Created by Artemii Shabanov on 25.04.2018.
//  Copyright © 2018 C3G9. All rights reserved.
//

import Foundation
import RealmSwift

class Borrowing: Object {
    @objc dynamic let book: Book? = nil
    @objc dynamic let friend: Friend? = nil
    @objc dynamic let borrowDate = NSDate()
    
    @objc dynamic var isLost = false
    @objc dynamic var isDamaged = false
    @objc dynamic var returnDate: NSDate? = nil
    @objc dynamic var comment: String? = nil
}
