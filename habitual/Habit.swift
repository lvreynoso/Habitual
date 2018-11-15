//
//  Habit.swift
//  habitual
//
//  Created by Lucia Reynoso on 11/15/18.
//  Copyright © 2018 Lucia Reynoso. All rights reserved.
//

import Foundation
import UIKit

struct Habit {
    
    var title: String
    let dateCreated: Date
    var selectedImage: UIImage
    
    var currentStreak: Int
    var bestStreak: Int
    var lastCompletionDate: Date?
    var numberOfCompletions: Int
    
    var hasCompletedForToday: Bool {
        return lastCompletionDate?.isToday ?? false
    }
    
    
}
