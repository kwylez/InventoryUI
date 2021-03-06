//
//  TabUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct TabUIView: View {
    
    @Binding var currentView: Tab
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        
        GeometryReader{ reader in
        
            ZStack {
                
                HStack(alignment: .center, spacing: 30) {

                    Spacer()
                    Image(systemName: self.currentView == .dashboard ? "chart.pie.fill" : "chart.pie")
                        .font(.title)
                        .foregroundColor(self.currentView == .dashboard ? .purple : .black)
                        .onTapGesture {
                            self.currentView = .dashboard
                        }
                    Image(systemName: self.currentView == .feed ? "rectangle.grid.1x2.fill" : "rectangle.grid.1x2")
                        .font(.title)
                        .foregroundColor(self.currentView == .feed ? .purple : .black)
                        .onTapGesture {
                            self.currentView = .feed
                        }

                    AddButtonTabView(action: {

                        withAnimation(.spring()) {
                            self.viewModel.showMenu.toggle()
                        }
                    })
                    .offset(y: -18.5)
                    
                    Image(systemName: self.currentView == .favorites ? "folder.fill" : "folder")
                        .font(.title)
                        .foregroundColor(self.currentView == .favorites ? .purple : .black)
                        .onTapGesture {
                            self.currentView = .favorites
                        }
                    Image(systemName: self.currentView == .settings ? "gearshape.fill" : "gearshape")
                        .font(.title)
                        .foregroundColor(self.currentView == .settings ? .purple : .black)
                        .onTapGesture {
                            self.currentView = .settings
                        }
                    Spacer()
                }
                
                if viewModel.showMenu {
                   
                    PlusMenu()
                        .offset(y: (reader.frame(in: .local).minY - 75))
                }
            }
        }
        .frame(height: 70)
    }
}

struct TabUIView_Previews: PreviewProvider {

    static var previews: some View {
        TabUIView(currentView: .constant(.dashboard))
    }
}

private struct PlusMenu: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    private let widthAndHeight: CGFloat = 25.0
    
    var body: some View {
        
        HStack(spacing: 50) {
        
            ZStack {
            
                Circle()
                    .foregroundColor(Color.red)
                    .frame(width: widthAndHeight + 15, height: widthAndHeight + 15)
                Image(systemName: "bag.fill")
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .foregroundColor(.white)
            }
            .onTapGesture(perform: {
                
                withAnimation(.spring()) {
                    viewModel.showCartDetailView.toggle()
                }
            })
            
            ZStack {
            
                Circle()
                    .foregroundColor(Color.red)
                    .frame(width: widthAndHeight + 15, height: widthAndHeight + 15)
                Image(systemName: "folder")
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .foregroundColor(.white)
            }
            .onTapGesture(perform: {
                
                withAnimation(.spring()) {
                    viewModel.showFolderDetailView.toggle()
                }
            })
        }
        .transition(.scale)
    }
}
