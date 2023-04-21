//
//  JournalEntryView.swift
//  SwiftUI-Journal
//
//  Created by Kanyaton Somjit on 2023-04-11.
//

import SwiftUI

struct JournalEntryView: View {
    var entry : JournalEntry?
    @EnvironmentObject var journal : JournalViewModel
    
    @State var content : String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            TextEditor(text: $content)
        }
        .onAppear(perform: setContent)
        .navigationBarItems(trailing: Button("Save") {
            saveEntry()
            presentationMode.wrappedValue.dismiss()
        })
    }
    
    private func setContent() {
        if let entry = entry {
            content = entry.content
        }
    }
    
    private func saveEntry() {
        if let entry = entry {
            //uppdatera gammal antekning
            journal.update(entry: entry, with: content)
        }else {
            //skapa en ny antekning
            let newEntry = JournalEntry(content: content)
            journal.entries.append(newEntry)
        }
    }
}

struct JournalEntryView_Previews: PreviewProvider {
    static var previews: some View {
        JournalEntryView()
    }
}
