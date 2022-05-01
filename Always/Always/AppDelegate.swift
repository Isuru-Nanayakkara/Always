//
//  AppDelegate.swift
//  Always
//
//  Created by Isuru Nanayakkara on 2022-05-01.
//

import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    
    private var statusItem: NSStatusItem!
    private var popover: NSPopover!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        if let button = statusItem.button {
            button.image = NSImage(systemSymbolName: "bolt.slash.circle.fill", accessibilityDescription: "Breakdown Button")
            button.action = #selector(AppDelegate.togglePopover)
        }
        
        popover = NSPopover()
        popover.contentSize = CGSize(width: 300, height: 400)
        popover.behavior = .transient
        popover.contentViewController = NSHostingController(rootView: LoginView())
        popover.contentViewController?.view.window?.makeKey()
    }
    
    @objc
    private func togglePopover() {
        if let button = statusItem.button {
            if popover.isShown {
                popover.performClose(nil)
            } else {
                popover.show(relativeTo: button.bounds, of: button, preferredEdge: .minY)
            }
        }
    }
    
}
