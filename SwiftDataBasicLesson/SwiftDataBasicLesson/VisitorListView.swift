//
//  VisitorListView.swift
//  SwiftDataBasicLesson
//
//  Created by Alessandra Winters on 2/1/24.
//

import SwiftUI
import SwiftData

struct VisitorListView: View {
    @Environment(\.modelContext) var modelContext
    @Query var visitors: [visitor]
    var body: some View {
        List {
            ForEach (visitors) {visitor in NavigationLink(value: visitor) {
                if (visitor.lastname.isEmpty){
                    Text("Edit new visitor") .foregroundColor(Color.gray)
                }
                else{
                    Text("\(visitor.lastname), \(visitor.firstname)")
                }
            }
            }
            .onDelete(perform: deleteVisitors)
        }
    }
    
    init(searchText: String){
        _visitors = Query(filter: #Predicate{
            if searchText.isEmpty{
                return true
            }
            else{
                return $0.lastname.localizedStandardContains(searchText)
            }
        })
    }
    
    func deleteVisitors(_ indexSet: IndexSet){
        for index in indexSet{
            let visitor = visitors[index]
            modelContext.delete(visitor)
        }
    }
}
