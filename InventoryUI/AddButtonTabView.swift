//
//  AddButtonTabView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/8/21.
//

import SwiftUI

struct AddButtonTabView: View {
    
    let action: () -> Void

    var body: some View {
        
        VStack(spacing:0) {
        
            Image(systemName: "plus.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 55.0, height: 55.0, alignment: .center)
                .foregroundColor(Color(.systemBlue))
                .background(Color(.white))
                .cornerRadius(55.0/2)
                .overlay(RoundedRectangle(cornerRadius: 55.0/2).stroke(Color(.blue), lineWidth: 2))

        }
        .frame(width: 55.0, height: 55.0)
        .onTapGesture(perform: action)
    }
}

struct AddButtonTabView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonTabView(action: {})
    }
}
