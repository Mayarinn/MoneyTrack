//
//  PurchaseRecordExtension.swift
//  MoneyTrack
//
//  Created by Karina Osadchaya on 9/30/24.
//

import Foundation

extension PurchaseRecord {
    init(purchaseRecord: PurchaseRecord) {
        self.place = purchaseRecord.place
        self.purchase = purchaseRecord.purchase
        self.price = purchaseRecord.price

//        self.year = purchaseRecord.date.year
//        self.month = purchaseRecord.date.month
//        self.day = purchaseRecord.date.day

        self.time = purchaseRecord.time
    }
}
