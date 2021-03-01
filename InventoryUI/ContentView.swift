//
//  ContentView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentView: Tab = .dashboard

    @EnvironmentObject var viewModel: ViewModel
    
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
                            withAnimation {
                                viewModel.showFolderDetailView.toggle()
                            }
                        }
                        .zIndex(3.0)
                        .animation(.spring())
                        .transition(.move(edge: .bottom))
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
            .environmentObject(ViewModel())
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
    }
}
