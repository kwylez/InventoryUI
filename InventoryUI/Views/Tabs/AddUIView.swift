//
//  AddUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct AddUIView: View {
    var body: some View {
        VStack {
            CircleTextView(foregroundColor: .orange, text: "Add")
        }
    }
}

struct AddUIView_Previews: PreviewProvider {
    static var previews: some View {
        AddUIView()
    }
}
