//
//  ProjectsMnagaer.swift
//  myResume
//
//  Created by Alexandre Odet on 23/06/2020.
//  Copyright © 2020 Alexandre Odet. All rights reserved.
//

import Foundation
import Combine

final class ProjectManager: ObservableObject {
    
    @Published var projects = [Project]()
    
    init() {
        projects.removeAll()
        fetchProjects()
    }
    
    func fetchProjects() {
        if !projects.isEmpty {
            projects.removeAll()
        }
        fillWithFakeProjects()
    }
    
    private func fillWithFakeProjects() {
        let opslib = Project(name: "OPSLib", langage: "Objective-C", id: 0)
        let museAF = Project(name: "MUSEAF", langage: "Swift", id: 1)
        let pilotMission = Project(name: "Pilot Mission", langage: "Swift, Objective-C", id: 2)
        projects.append(contentsOf: [opslib, museAF, pilotMission])
    }
}
