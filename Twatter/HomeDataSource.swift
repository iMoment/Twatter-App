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
        let markUser = User(name: "Mark Zuckerberg", username: "@markzuckerberg", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-C and build iOS apps!", profileImage: #imageLiteral(resourceName: "ZuckProfile"))
        
        let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Ray Wenderlich is an iPhone developer and tweets on topics related to iPhone, software, and gaming. Check out our conference.", profileImage: #imageLiteral(resourceName: "RayProfile"))
        
        let stanleyUser = User(name: "Stanley Pan", username: "@iMoment", bioText: "Stanley Pan is an iOS developer who programs in Swift. Interests include productivity apps, UI/UX design, Guild Wars 2, and recent trends in software, hardware, and technology. You can find out more information on https://www.github.com/iMoment.", profileImage: #imageLiteral(resourceName: "MeProfile"))
        
        return [markUser, rayUser, stanleyUser]
    }()

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
