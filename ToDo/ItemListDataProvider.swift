//
//  ItemListDataProvider.swift
//  ToDo
//
//  Created by Thiago Garcia on 03/05/18.
//  Copyright © 2018 iGarcia. All rights reserved.
//

import UIKit

class ItemListDataProvider: NSObject, UITableViewDataSource {
    var itemManager: ItemManager?

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let itemManager = itemManager else { return 0 }
        guard let itemSection = Section(rawValue: section) else { fatalError() }
        
        let numberOfRows: Int
        switch itemSection {
        case .toDo: numberOfRows = itemManager.toDoCount
        case .done: numberOfRows = itemManager.doneCount
        }
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ItemCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}

enum Section: Int {
    case toDo
    case done
}
