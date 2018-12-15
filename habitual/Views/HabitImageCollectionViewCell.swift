//
//  HabitImageCollectionViewCell.swift
//  habitual
//
//  Created by Lucia Reynoso on 12/15/18.
//  Copyright © 2018 Lucia Reynoso. All rights reserved.
//

import UIKit

class HabitImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var habitImage: UIImageView!
    
    static let identifier = "habitImageCell"
    
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    func setImage(image: UIImage){
        self.habitImage.image = image
    }

}
