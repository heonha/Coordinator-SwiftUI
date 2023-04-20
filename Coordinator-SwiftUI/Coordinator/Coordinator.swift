//
//  Coordinator.swift
//  MVVMC-02
//
//  Created by Heonjin Ha on 2023/04/20.
//

import SwiftUI
import Combine

class Coordinator: ObservableObject {

    private let isRoot: Bool
    private let id = UUID().uuidString.prefix(4)

    var destination: Destination = .viewA

    @Published private var navigationTrigger: Bool = false
    @Published private var rootNavigationTrigger: Bool = false

    private var cancellable = Set<AnyCancellable>()

    init(isRoot: Bool = false) {

        self.isRoot = isRoot

        if isRoot {
          NotificationCenter.default.publisher(for: .popToRoot)
            .sink { [unowned self] _ in
              rootNavigationTrigger = false
            }
            .store(in: &cancellable)
        }
        print("\(id) - Coordinator Init")
    }

    deinit {
        print("\(id) - Coordinator Deinit")
        cancellable.forEach { $0.cancel() }
    }

    func navigationLinkSection() -> some View {
        NavigationLink(isActive: Binding<Bool>(get: getTrigger, set: setTrigger(newValue:))) {
            destination.view
        } label: {
            EmptyView()
        }
    }

    private func getTrigger() -> Bool {
        if isRoot {
            return rootNavigationTrigger
        } else {
            return navigationTrigger
        }
    }

    private func setTrigger(newValue: Bool) {
        if isRoot {
            rootNavigationTrigger = newValue
        } else {
            navigationTrigger = newValue
        }
    }

    func push(destination: Destination) {
        self.destination = destination

        if isRoot {
            rootNavigationTrigger.toggle()
        } else {
            navigationTrigger.toggle()
        }
    }

    func popToRoot() {
      NotificationCenter.default.post(name: .popToRoot, object: nil)
    }

}
