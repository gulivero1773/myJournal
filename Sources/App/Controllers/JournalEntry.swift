//
//  JournalEntry.swift
//  App
//
//  Created by Mykola Buhaiov on 06.04.2020.
//

import FluentSQLite
import Vapor

final class JournalEntry: SQLiteModel {
    var id: Int?
    var title: String
    var content: String
    
    init(id: Int? = nil, title: String, content: String) {
        self.id = id
        self.title = title
        self.content = content
    }
}

extension JournalEntry: Migration { }
extension JournalEntry: Content { }
extension JournalEntry: Parameter { }
