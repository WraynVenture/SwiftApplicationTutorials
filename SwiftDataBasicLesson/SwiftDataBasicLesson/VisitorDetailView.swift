//
//  VisitorDetailView.swift
//  SwiftDataBasicLesson
//
//  Created by Alessandra Winters on 2/1/24.
//

import SwiftUI

struct VisitorDetailView: View{
    @Bindable var visitor: visitor
    
    var body: some View{
        Form{
            Section("Visitor"){
                TextField("First name", text: $visitor.firstname)
                TextField("Last name", text: $visitor.lastname)
            }
            
            Section("Visit History"){
                Button("Add Visit", action: addVisit)
                
                ForEach(visitor.visits){
                    visit in
                    Text(visit.date.formatted(date: .abbreviated, time: .shortened))
                }
                
            }
        }
        .navigationTitle("Visitor Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
    func addVisit(){
        visitor.visits.append(LogEntry(date: Date.now))
    }
}
