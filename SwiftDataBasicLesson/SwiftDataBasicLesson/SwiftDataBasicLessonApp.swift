//
//  SwiftDataBasicLessonApp.swift
//  SwiftDataBasicLesson
//
//  Created by Alessandra Winters on 2/1/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataBasicLessonApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for:visitor.self)
    }
}
