//
//  DateExtensions.swift
//  habitual
//
//  Created by Lucia Reynoso on 11/15/18.
//  Copyright © 2018 Lucia Reynoso. All rights reserved.
//

import Foundation

extension Date {
    
    var stringValue: String {
        return DateFormatter.localizedString(from: self, dateStyle: .medium, timeStyle: .none)
    }
    
    var isToday: Bool {
        let calendar = Calendar.current
        return calendar.isDateInToday(self)
    }
    
    var isYesterday: Bool {
        let calendar = Calendar.current
        return calendar.isDateInYesterday(self)
    }
}
