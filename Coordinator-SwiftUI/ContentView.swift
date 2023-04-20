//
//  ContentView.swift
//  MVVMC-02
//
//  Created by Heonjin Ha on 2023/04/20.
//

import SwiftUI
import Combine

struct ContentView: View {

    @ObservedObject var viewModel = MainViewModel.shared

    var body: some View {

        if viewModel.isSet {
            MainView()
        } else {
            ViewA()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

