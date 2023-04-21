//
//  JournalViewModel.swift
//  SwiftUI-Journal
//
//  Created by Kanyaton Somjit on 2023-04-11.
//

import Foundation

class JournalViewModel : ObservableObject {
    @Published var entries = [JournalEntry]()
    
    init() {
        addMockData()
    }
    
    func addMockData() {
        entries.append(JournalEntry(content: "Jag åt"))
        entries.append(JournalEntry(content: "Jag sov"))
        entries.append(JournalEntry(content: "Jag programerade"))
    }
    
    func update(entry: JournalEntry, with content: String) {
        if let index = entries.firstIndex(of: entry){
            entries[index].content = content
        }
    }
}
