//
//  DashboardUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct DashboardUIView: View {
    var body: some View {
        
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Screen 1")
                    .font(.system(size: 20))
                    .bold()
                Spacer()
            }
        }
    }
}

struct DashboardUIView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardUIView()
    }
}
