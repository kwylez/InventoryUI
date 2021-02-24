//
//  ContentView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentView: Tab = .dashboard
    
    /// move to environment var?
    @State private var detailIsShown: Bool = false
    
    var body: some View {
    
        GeometryReader {reader in
        
            ZStack {
                
                ScrollView {
                    
                    CurrentUIView(
                        currentView: self.$currentView,
                        detailsIsShown: self.$detailIsShown,
                        gradientHeight: reader.size.height / 2
                    )
                    .frame(maxHeight: .infinity)
                }

                VStack {
                    Spacer()
                    Divider()
                    TabUIView(currentView: self.$currentView)
                        .frame(minHeight: 70)
                        .background(Color.white)
                }
                .opacity(detailIsShown ? 0 : 1)
            }
            .frame(width: reader.size.width, height: reader.size.height)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
    }
}
