//
//  SDGListedViewCell.swift
//  SDGsApp
//
//  Created by 倉田七海 on 2022/05/05.
//

import Foundation
import UIKit

class SDGListedViewCell: UICollectionViewCell {
    @IBOutlet weak var iconImage: UIImageView!
    func configure(indexNumber: Int) {
        iconImage.image = UIImage(named: "sdg\(indexNumber)")
    }
}
