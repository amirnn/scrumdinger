//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Amir Nourinia on 30.06.22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
