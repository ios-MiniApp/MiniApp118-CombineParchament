//
//  PageViewModel.swift
//  MiniApp118-CombineParchament
//
//  Created by 前田航汰 on 2023/04/28.
//

import Foundation

class PageViewModel: ObservableObject {
    @Published var listItems: [String] = []

    func loadListItems() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.listItems.append(contentsOf: ["Item 1", "Item 2", "Item 3"])
        }
    }
}
