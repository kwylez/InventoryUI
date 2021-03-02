//
//  FavoritesUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct FavoritesUIView: View {
    
    var body: some View {
    
        VStack {
            CircleTextView(foregroundColor: .blue, text: "Favorites")
        }
    }
}

struct FavoritesUIView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesUIView()
    }
}
