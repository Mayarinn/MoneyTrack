//
//  DateModelExtension.swift
//  MoneyTrack
//
//  Created by Karina Osadchaya on 9/30/24.
//

import Foundation

extension RecordDate {
    
    init() {
        let currentDate = Date()
        let calendar = Calendar.current
        
        self.year = calendar.component(.year, from: currentDate)
        self.month = calendar.component(.month, from: currentDate)
        self.day = calendar.component(.day, from: currentDate)
        
        self.hour = calendar.component(.hour, from: currentDate)
        self.minute = calendar.component(.minute, from: currentDate)
    }
        
}
