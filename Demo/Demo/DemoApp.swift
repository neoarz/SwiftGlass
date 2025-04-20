//
//  DemoApp.swift
//  Demo
//
//  Created by Ming on 20/4/2025.
//

import SwiftUI

@main
struct DemoApp: App {
    var body: some Scene {
        WindowGroup {
            Basic()
        }
        #if os(macOS)
        .windowStyle(.hiddenTitleBar)
        #endif
    }
}
