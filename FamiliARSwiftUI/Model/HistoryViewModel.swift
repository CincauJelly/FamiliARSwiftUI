//
//  HistoryViewModel.swift
//  FamiliARSwiftUI
//
//  Created by Fiona Stefani Limin on 26/11/21.
//
import Foundation


class HistoryViewModel: ObservableObject {

    @Published var items: [HistoryModel] = []


    init() {
        getItems()
    }

    func getItems() {
        let newItems = [
            HistoryModel(id: "1", title: "Skin Burn", date: "Oct 22, 2021", duration: "10"),
            HistoryModel(id: "2", title: "Skin Burn", date: "Oct 23, 2021", duration: "12"),
            HistoryModel(id: "3", title: "Skin Burn", date: "Oct 24, 2021", duration: "13"),
            HistoryModel(id: "4", title: "Skin Burn", date: "Oct 25, 2021", duration: "14"),
            HistoryModel(id: "5", title: "Skin Burn", date: "Oct 26, 2021", duration: "15"),
            HistoryModel(id: "6", title: "Skin Burn", date: "Oct 27, 2021", duration: "16")

        ]
        items.append(contentsOf: newItems)

    }


}
