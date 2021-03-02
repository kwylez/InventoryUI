//
//  PaddedTitleText.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 3/1/21.
//

import SwiftUI

extension Text {
    
    // MARK: Internal (properties)
    
    func paddedTitleText() -> some View {
            
        self
            .bold()
            .font(.system(.title2, design: .rounded))
            .padding(.horizontal)
    }
}
