//
//  DashboardUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct DashboardUIView: View {
    
    let gradientColors: Gradient = Gradient(colors: [
                                        .dashboardStart,
                                        .dashboardMiddle,
                                        .dashboardEnd
                                    ]
                                )
    let gradientHeight: CGFloat
    
    var body: some View {
        
        GeometryReader{reader in
    
            VStack {
                
                LinearGradient(
                    gradient: gradientColors,
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .frame(height: gradientHeight)
            }
        }
    }
}

struct DashboardUIView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardUIView(gradientHeight: 100)
    }
}
