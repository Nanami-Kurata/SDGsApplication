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
            flowLayout.itemSize = CGSize(width: 140, height: 140)
            flowLayout.minimumLineSpacing = 28
            flowLayout.minimumInteritemSpacing = 28
            let itemsPerRows = floor((UIScreen.main.bounds.width / (140 + 28)))
            let totalLength = (140 + 28) * itemsPerRows - 28
            let edgeInsets = (UIScreen.main.bounds.width - totalLength) / 2
            flowLayout.sectionInset = UIEdgeInsets(top: 28, left: edgeInsets, bottom: 28,  right: edgeInsets)
            collectionView.collectionViewLayout = flowLayout
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 17
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let listCell = collectionView.dequeueReusableCell(withReuseIdentifier: "listCell", for: indexPath) as! SDGListedViewCell
        listCell.backgroundColor = UIColor.green
        listCell.configure(indexNumber: indexPath.row)
        return listCell
    }
}
