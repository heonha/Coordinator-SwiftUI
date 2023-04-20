//
//  MainViewModel.swift
//  MVVMC-02
//
//  Created by Heonjin Ha on 2023/04/20.
//

import SwiftUI

class MainViewModel: ObservableObject {

    @Published var isSet = false

    static let shared = MainViewModel()

    private init() {
        
    }

}
