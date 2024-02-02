//
//  ContentView.swift
//  SwiftDataBasicLesson
//
//  Created by Alessandra Winters on 2/1/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VisitorListView(searchText: searchText)
                .navigationTitle("Visitors")
                .searchable(text: $searchText)
                .navigationDestination(for: visitor.self, destination: VisitorDetailView.init)
                .toolbar{
                    Button("New Visitor", systemImage: "plus", action: addVisitor)
                }
        }
    }
    
    func addVisitor(){
        let visitor = visitor(firstname: "", lastname: "")
        modelContext.insert(visitor)
    }
}
#Preview {
    ContentView()
}
