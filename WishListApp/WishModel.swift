//
//  WishModel.swift
//  WishListApp
//
//  Created by Miguel Agostinho on 06/11/2026.
//

import Foundation
import SwiftData


@Model
class Wish {
    var title: String
    var isDone: Bool
    
    init(title: String, isDone: Bool) {
        self.title = title
        self.isDone = isDone
    }
}
