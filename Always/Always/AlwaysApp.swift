//
//  AlwaysApp.swift
//  Always
//
//  Created by Isuru Nanayakkara on 2022-05-01.
//

import SwiftUI

@main
struct AlwaysApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .frame(width: 0, height: 0)
        }
    }
}
