//
//  HistoryModel.swift
//  FamiliARSwiftUI
//
//  Created by Fiona Stefani Limin on 26/11/21.
//

import Foundation


struct HistoryModel : Identifiable, Codable {
    let id:String
    let title: String
    let date: String
    let duration:String

    init(id: String = UUID().uuidString, title: String, date: String, duration:String) {
        self.id = id
        self.title = title
        self.date = date
        self.duration = duration
    }

    func updateCompletion() -> HistoryModel {
        return HistoryModel(id: id, title: title, date:date,duration:duration)
    }

}
