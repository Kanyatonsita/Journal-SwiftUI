//
//  SwiftUI_JournalApp.swift
//  SwiftUI-Journal
//
//  Created by Kanyaton Somjit on 2023-04-11.
//

import SwiftUI

@main
struct SwiftUI_JournalApp: App {
    
    @StateObject var journal = JournalViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(journal)
        }
    }
}
