//
//  ContentView.swift
//  MiniApp118-CombineParchament
//
//  Created by 前田航汰 on 2023/04/28.
//

import SwiftUI
import Parchment

struct ContentView: View {

    @State var selectedIndex: Int = 2
    let items = [
        PagingIndexItem(index: 0, title: "View 0"),
        PagingIndexItem(index: 1, title: "View 1"),
        PagingIndexItem(index: 2, title: "View 2"),
        PagingIndexItem(index: 3, title: "View 3"),
    ]

    var body: some View {
        VStack {



            PageView(items: items, selectedIndex: $selectedIndex) { item in

                VStack {
                    ListItems()
                }

            }
        }
        .padding()
    }

}

struct ListItems: View {

    @ObservedObject var viewModel = PageViewModel()

    var body: some View {
        List(viewModel.listItems, id: \.self) { item in
            Text(item)
        }
        .onAppear {
            viewModel.loadListItems()
        }
    }
}

