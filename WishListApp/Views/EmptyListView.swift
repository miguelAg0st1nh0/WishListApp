//
//  EmptyView.swift
//  WishListApp
//
//  Created by Miguel Agostinho on 09/11/2026.
//

import SwiftUI

struct EmptyListView: View {
    var body: some View {
        ContentUnavailableView {
            Label {
                Text("Your wish list is empty!")
                    .font(.title2)
                    .padding()
            } icon : {
                Image(systemName: "exclamationmark.triangle")
                    .imageScale(.large)
            }
            
        } description: {
            Text("Tap the button to add new wishes to your list")
                
        }
    }
    
}

#Preview {
    EmptyListView()
}
