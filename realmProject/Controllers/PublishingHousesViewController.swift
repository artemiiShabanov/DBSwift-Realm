//
//  PublishingHousesViewController.swift
//  realmProject
//
//  Created by Kuroyan Juliett on 26.04.18.
//  Copyright © 2018 C3G9. All rights reserved.
//

import UIKit
import RealmSwift

class PublishingHousesViewController: UITableViewController {
    var publishingHouses: Results<PublishingHouse>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return publishingHouses?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PublishingHouseTableViewCell.reuseId) as? PublishingHouseTableViewCell
            else {
                fatalError("Fatal error")
        }
        cell.set(name: publishingHouses[indexPath.row].name)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*word = words[indexPath.row]
         tableView.deselectRow(at: indexPath, animated: true)
         segueTarget = .Word
         self.performSegue(withIdentifier: , sender: self)*/
    }
}
