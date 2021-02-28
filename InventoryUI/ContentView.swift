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
//    @State private var detailIsShown: Bool = false
    @EnvironmentObject var viewModel: ViewModel
    
    @State private var showMenu: Bool = false
    
    var body: some View {
    
        GeometryReader {reader in
        
            ZStack {
                
                ScrollView {
                    
                    CurrentUIView(
                        currentView: self.$currentView,
                        gradientHeight: reader.size.height / 2
                    )
                    .frame(height: reader.size.height)
                }

                VStack {
                    
                    Spacer()
                    Divider()
                    TabUIView(currentView: self.$currentView)
                        .frame(minHeight: 70)
                        .background(Color.white)
                }
                .opacity(viewModel.detailIsShown ? 0 : 1)
                .zIndex(2.0)
                
                if viewModel.showFolderDetailView {
                    
                    Rectangle()
                        .fill(Color.green)
                        .overlay(Text("Folder text"))
                        .onTapGesture {
                            viewModel.showFolderDetailView.toggle()
                        }
                        .zIndex(3.0)
                }
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
