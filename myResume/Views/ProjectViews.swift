//
//  ProjectViews.swift
//  myResume
//
//  Created by Alexandre Odet on 21/06/2020.
//  Copyright © 2020 Alexandre Odet. All rights reserved.
//

import SwiftUI
import Combine

struct ProjectView: View {
    @ObservedObject var projectFetcher = ProjectManager()
    
    var body: some View {
        List(projectFetcher.projects) { project in
            VStack (alignment: .leading) {
                Text(project.name)
                Text(project.langage)
                    .font(.system(size: 11))
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct ProjectViews_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView()
    }
}
