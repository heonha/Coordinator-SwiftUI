//
//  MainView.swift
//  MVVMC-02
//
//  Created by Heonjin Ha on 2023/04/20.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("Hello")
                .tabItem {
                    Image(systemName: "circle")
                    Text("Page 1")
                }
            Text("World!")
                .tabItem {
                    Image(systemName: "circle")
                    Text("Page 2")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
