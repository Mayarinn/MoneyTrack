//
//  PurchaseRecordModel.swift
//  MoneyTrack
//
//  Created by Karina Osadhaya on 9/25/24.
//

import Foundation

struct PurchaseRecord: Codable {
    let date: Date
    let time: String
    let place: String
    let purchase: String
    let price: String
}

struct Date: Codable {
    let year: Int
    let month: Int
    let day: Int
}
