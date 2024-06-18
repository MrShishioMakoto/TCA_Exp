//
//  TCA_ExpApp.swift
//  TCA_Exp
//
//  Created by GoncaloSAlmeida on 18/06/2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_ExpApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
      }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: TCA_ExpApp.store)
        }
    }
}
