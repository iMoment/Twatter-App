//
//  HomeDataSource.swift
//  Twatter
//
//  Created by Stanley Pan on 03/01/2017.
//  Copyright © 2017 Stanley Pan. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let threshUser = User(name: "Thresh", username: "@bottomLane", bioText: "I'm the best support for Vayne, except I'm bronze.")
        
        return [threshUser]
    }()
    
//    let words = ["user1", "user2", "user3"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
