//
//  CurrentUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/7/21.
//

import SwiftUI

struct CurrentUIView: View {
    
    @Binding var currentView: Tab
    
    var gradientHeight: CGFloat
    
    var body: some View {
        
        VStack {
            
            switch self.currentView {
            case .dashboard:
                DashboardUIView(gradientHeight: gradientHeight)
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
        CurrentUIView(currentView: .constant(.dashboard), gradientHeight: 250)
    }
}
