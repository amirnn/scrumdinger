//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Amir Nourinia on 30.06.22.
//

import SwiftUI

struct ScrumsView: View {
    
    @Environment(\.colorScheme)
    private var colorScheme
    
    private var invColorScheme: Color? {
        switch colorScheme {
        case .dark:
            return Color.white
        case .light:
            return Color.black
        default:
            print("Unknown color scheme!")
            return .none
        }
    }
    
    let scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                }.listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums").foregroundColor(invColorScheme!)
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
                .colorScheme(.dark)
        }
        NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
                .colorScheme(.light)
        }
    }
}
