//
//  SettingsUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct SettingsUIView: View {
    
    var body: some View {
    
        VStack {
            CircleTextView(foregroundColor: .red, text: "Settings")
        }
    }
}

struct SettingsUIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUIView()
    }
}
