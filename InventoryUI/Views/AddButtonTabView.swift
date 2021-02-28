//
//  AddButtonTabView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/8/21.
//

import SwiftUI

struct AddButtonTabView: View {
    
    let action: () -> Void
    
    var radius: CGFloat = 50.0
    
    @EnvironmentObject var viewModel: ViewModel

    var body: some View {
        
        VStack(spacing:0) {
        
            Image(systemName: "plus.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: radius, height: radius, alignment: .center)
                .foregroundColor(.red)
                .background(Color(.white))
                .cornerRadius(radius/2)
                .shadow(color: Color.red.opacity(0.3), radius: 10, x: 0, y: 0)
                .rotationEffect(Angle(degrees: viewModel.showMenu ? 45 : 0))

        }
        .frame(width: radius, height: radius)
        .onTapGesture(perform: action)
    }
}

struct AddButtonTabView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonTabView(action: {})
    }
}
