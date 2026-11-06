//
//  ContentView.swift
//  WishListApp
//
//  Created by Miguel Agostinho on 06/11/2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var wishes: [Wish]
    
    @State private var isDone: Bool = false
    var body: some View {
        NavigationStack {
            List {
                ForEach(wishes) { wish in
                    Text(wish.title)
                        .strikethrough(wish.isDone)
                        .swipeRightToComplete(wish: wish)
                }
                
            }
            .navigationTitle("Wishlist")
            
        }
    }
}

extension View {
    func swipeRightToComplete(wish: Wish) -> some View {
        self
            .swipeActions(edge: .leading) {
                Button {
                    wish.isDone.toggle()
                } label: {
                    Image(systemName: "heart")
                }
            }
    }
}

#Preview("List") {
    let container = try! ModelContainer(for: Wish.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    
    container.mainContext.insert(Wish(title: "Buy Milk", isDone: false))
    container.mainContext.insert(Wish(title: "Buy Eggs", isDone: false))
    
    return ContentView()
        .modelContainer(container)
}

#Preview("Empty List") {
    ContentView()
        .modelContainer(for: Wish.self, inMemory: true)
}
