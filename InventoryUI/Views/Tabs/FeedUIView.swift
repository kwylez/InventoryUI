//
//  FeedUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct FeedUIView: View {
    
    var body: some View {
        
        VStack {
            CircleTextView(foregroundColor: .purple, text: "Feed")
        }
    }
}

struct FeedUIView_Previews: PreviewProvider {
    static var previews: some View {
        FeedUIView()
    }
}
