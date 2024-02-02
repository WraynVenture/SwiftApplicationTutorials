//
//  Item.swift
//  SwiftDataBasicLesson
//
//  Created by Alessandra Winters on 2/1/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
