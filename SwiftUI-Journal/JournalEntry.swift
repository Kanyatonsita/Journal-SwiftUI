//
//  JournalEntry.swift
//  SwiftUI-Journal
//
//  Created by Kanyaton Somjit on 2023-04-11.
//

import Foundation

struct JournalEntry : Identifiable, Equatable{
    var id = UUID()
    
    var content : String
    
    //unformatedDate-få dagen datum när vi skapa dagbok
    private var unformatedDate = Date()
    private let dateFormateter = DateFormatter()
    
    init(content: String) {
        self.content = content
        dateFormateter.dateStyle = .medium
    }
    
    var date : String {
        return dateFormateter.string(from: unformatedDate)
    }
    
}
