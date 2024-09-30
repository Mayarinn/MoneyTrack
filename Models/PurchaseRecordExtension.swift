//
//  PurchaseRecordExtension.swift
//  MoneyTrack
//
//  Created by Karina Osadchaya on 9/30/24.
//

import Foundation

extension PurchaseRecord {
    
    init(purchaseRecord: PurchaseRecord) {
        self.date = purchaseRecord.date
        self.place = purchaseRecord.place
        self.purchase = purchaseRecord.purchase
        self.price = purchaseRecord.price
    }
    
}
