//
//  PurchaseRecordModel.swift
//  MoneyTrack
//
//  Created by Karina Osadhaya on 9/25/24.
//

import Foundation

var purchaseRecords: [PurchaseRecord] = []

struct PurchaseRecord: Codable {
    let date: RecordDate
    let place: String
    let purchase: String
    let price: String
}

struct RecordDate: Codable {
    let year: Int
    let month: Int
    let day: Int
    
    let hour: Int
    let minute: Int
}
