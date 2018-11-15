//
//  UIViewControllerExtensions.swift
//  habitual
//
//  Created by Lucia Reynoso on 11/15/18.
//  Copyright © 2018 Lucia Reynoso. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    static func instantiate() -> Self {
        return self.init(nibName: String(describing: self), bundle: nil)
    }
}
