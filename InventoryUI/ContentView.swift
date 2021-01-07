//
//  ContentView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentView: Tab = .dashboard
    
    let gradientColors = Gradient(colors: [Color.pink, Color.purple])
    
    var body: some View {
    
        GeometryReader {reader in
        
            ZStack {
                
                ScrollView {
                    LinearGradient(gradient: gradientColors, startPoint: .top, endPoint: .bottom)
                        .frame(height: reader.size.height / 3)
                    CurrentUIView(currentView: self.$currentView)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)

                VStack {
                    Spacer()
                    TabUIView()
                        .frame(minHeight: 70)
                        .frame(maxWidth: .infinity)
                        .background(Color.pink)
                }
                
                VStack {
                    Spacer()
                    Text("Hello world \(reader.size.height)")
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
