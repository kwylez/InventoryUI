//
//  TabUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct TabUIView: View {
    
    @Binding var currentView: Tab
    
    var body: some View {
    
        HStack(alignment: .top, spacing: 30) {

            Spacer()
            Image(systemName: self.currentView == .dashboard ? "chart.pie.fill" : "chart.pie")
                .font(.largeTitle)
                .foregroundColor(self.currentView == .dashboard ? .purple : .black)
                .onTapGesture {
                    self.currentView = .dashboard
                }
            Image(systemName: self.currentView == .feed ? "rectangle.grid.1x2.fill" : "rectangle.grid.1x2")
                .font(.largeTitle)
                .foregroundColor(self.currentView == .feed ? .purple : .black)
                .onTapGesture {
                    self.currentView = .feed
                }
            
            AddButtonTabView(action: {
                self.currentView = .dashboard
            })
            .offset(y: -22.5)
            
            Image(systemName: self.currentView == .favorites ? "folder.fill" : "folder")
                .font(.largeTitle)
                .foregroundColor(self.currentView == .favorites ? .purple : .black)
                .onTapGesture {
                    self.currentView = .favorites
                }
            Image(systemName: self.currentView == .settings ? "gearshape.fill" : "gearshape")
                .font(.largeTitle)
                .foregroundColor(self.currentView == .settings ? .purple : .black)
                .onTapGesture {
                    self.currentView = .settings
                }
            Spacer()
        }
    }
}

struct TabUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabUIView(currentView: .constant(.dashboard))
    }
}
