//
//  HomeDatasourceController.swift
//  Twatter
//
//  Created by Stanley Pan on 03/01/2017.
//  Copyright © 2017 Stanley Pan. All rights reserved.
//

import LBTAComponents

class HomeDatasourceController: DatasourceController {
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
    }
    
    // For header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    // For footer
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}
