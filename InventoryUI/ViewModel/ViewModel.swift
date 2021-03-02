//
//  ViewModel.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 2/28/21.
//

import Foundation
import Combine
import SwiftUI

class ViewModel: ObservableObject {

    // MARK: Internal (properties)
    
    @Published var showMenu: Bool = false
    
    @Published var detailIsShown: Bool = false
    
    @Published var showFolderDetailView: Bool = false
    
    @Published var showCartDetailView: Bool = false
}
