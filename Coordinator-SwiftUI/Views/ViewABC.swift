//
//  ViewA.swift
//  Coordinator-SwiftUI
//
//  Created by Heonjin Ha on 2023/04/20.
//


import SwiftUI

struct ViewA: View {

    @StateObject var coordinator = Coordinator(isRoot: true)

    var body: some View {
        NavigationView {
            ZStack {
                coordinator.navigationLinkSection()
                VStack {
                    Text("View A")
                    Button("다음") {
                        coordinator.push(destination: .viewB)
                    }
                }
            }
            .navigationTitle("Hi Coordinator")
        }
    }

}

struct ViewB: View {

    @StateObject var coordinator = Coordinator()

    var body: some View {
        ZStack {
            coordinator.navigationLinkSection()
            VStack {
                Text("View B")
                Button("다음") {
                    coordinator.push(destination: .viewC)
                }
            }
            .navigationTitle("Hi View B")
        }
        .onAppear {
            print("second!")
        }
    }
}


struct ViewC: View {

    @StateObject var coordinator = Coordinator()
    @ObservedObject var viewModel = MainViewModel.shared

    var body: some View {
        VStack {
            Text("View C")

            Button("Pop to Root") {
                coordinator.popToRoot()
            }

            Button("Go Main View") {
                viewModel.isSet.toggle()
            }
        }
        .navigationTitle("Hi View C")

    }
}
