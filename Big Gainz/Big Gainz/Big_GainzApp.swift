//
//  Big_GainzApp.swift
//  Big Gainz
//
//  Created by Jason Leong on 3/1/22.
//

import SwiftUI

@main
struct Big_GainzApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
