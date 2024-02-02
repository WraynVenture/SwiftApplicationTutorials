//
//  visitor.swift
//  SwiftDataBasicLesson
//
//  Created by Alessandra Winters on 2/1/24.
//

import Foundation
import SwiftData
@Model
class visitor{
    var firstname: String
    var lastname: String
    //to create a relationshop between our schemas we come back to Visitor and
    //create @Relationshop between them. Note that with the deleteRule parameter set to cascade
    //that changes made to one data model will be applied to all in a relationship
    
    @Relationship(deleteRule: .cascade) var visits = [LogEntry]()
    
    init(firstname: String, lastname: String)
    {
        self.firstname = firstname
        self.lastname = lastname
    }
}
