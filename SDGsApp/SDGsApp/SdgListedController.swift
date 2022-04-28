//
//  SdgListedController.swift
//  SDGsApp
//
//  Created by 倉田七海 on 2022/04/15.
//

import Foundation
import UIKit

class SdgListedController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        settingCollectionViewLayout()
    }
    
    func settingCollectionViewLayout() {
            flowLayout.itemSize = CGSize(width: 120, height: 120)
            flowLayout.minimumLineSpacing = 16
            flowLayout.minimumInteritemSpacing = 16
            let itemsPerRows = floor((UIScreen.main.bounds.width / (120 + 16)))
            let totalLength = (120 + 16) * itemsPerRows - 16
            let edgeInsets = (UIScreen.main.bounds.width - totalLength) / 2
            flowLayout.sectionInset = UIEdgeInsets(top: 16, left: edgeInsets, bottom: 16,  right: edgeInsets)
            collectionView.collectionViewLayout = flowLayout
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 17
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let listCell = collectionView.dequeueReusableCell(withReuseIdentifier: "listCell", for: indexPath)
        listCell.backgroundColor = UIColor.green
        return listCell
    }
}
