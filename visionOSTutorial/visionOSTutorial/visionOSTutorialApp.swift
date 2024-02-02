//
//  visionOSTutorialApp.swift
//  visionOSTutorial
//
//  Created by Alessandra Winters on 2/2/24.
//

import SwiftUI

@main
struct visionOSTutorialApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.windowStyle(.volumetric)
        
        ImmersiveSpace(id: "ImmersiveSpace"){
            ImmersiveView()
        }
    }
}
