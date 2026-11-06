//
//  WishListAppApp.swift
//  WishListApp
//
//  Created by Miguel Agostinho on 06/11/2026.
//

import SwiftUI
import SwiftData

@main
struct WishListAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Wish.self)
        }
    }
}
