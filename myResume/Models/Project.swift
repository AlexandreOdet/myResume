//
//  Project.swift
//  myResume
//
//  Created by Alexandre Odet on 23/06/2020.
//  Copyright © 2020 Alexandre Odet. All rights reserved.
//

import Foundation

struct Project: Identifiable {
    public var id: Int
    public var name: String
    public var langage: String
    
    init(name: String, langage: String, id: Int) {
        self.id = id
        self.name = name
        self.langage = langage
    }
}
