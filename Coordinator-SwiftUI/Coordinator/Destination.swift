//
//  Destination.swift
//  MVVMC-02
//
//  Created by Heonjin Ha on 2023/04/20.
//

import SwiftUI

enum Destination {
    case viewA, viewB, viewC

    @ViewBuilder
    var view: some View {
        switch self {
        case .viewA:
            ViewA()
        case .viewB:
            ViewB()
        case .viewC:
            ViewC()
        }
    }

}
