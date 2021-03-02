//
//  CircleTextView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 3/1/21.
//

import SwiftUI

struct CircleTextView: View {
    
    var foregroundColor: Color
    
    var text: String
    
    var body: some View {
        
        Circle()
            .foregroundColor(foregroundColor)
            .frame(width: 200, height: 200)
            .overlay(
                Text(text)
                    .paddedTitleText()
            )
    }
}

struct CircleTextView_Previews: PreviewProvider {
    static var previews: some View {
        CircleTextView(foregroundColor: .orange, text: "Hello world")
    }
}
