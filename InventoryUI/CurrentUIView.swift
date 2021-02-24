//
//  CurrentUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/7/21.
//

import SwiftUI

struct CurrentUIView: View {
    
    @Binding var currentView: Tab
    
    @Binding var detailsIsShown: Bool
    
    var gradientHeight: CGFloat
    
    var body: some View {
        
        VStack {
            
            switch self.currentView {
            case .dashboard:
                DashboardUIView(gradientHeight: gradientHeight, detailIsShown: $detailsIsShown)
            case .favorites:
                FavoritesUIView()
            case .feed:
                FeedUIView()
            case .settings:
                SettingsUIView()
            }
        }
    }
}

struct CurrentUIView_Previews: PreviewProvider {
    
    static var previews: some View {
    
        CurrentUIView(
            currentView: .constant(.dashboard),
            detailsIsShown: .constant(false),
            gradientHeight: 250
        )
    }
}
