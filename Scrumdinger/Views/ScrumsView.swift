//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Amir Nourinia on 30.06.22.
//

import SwiftUI

struct ScrumsView: View {
    
    let scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
            .colorScheme(.dark)
        ScrumsView(scrums: DailyScrum.sampleData)
            .colorScheme(.light)
    }
}
