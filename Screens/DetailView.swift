//
//  DetailView.swift
//  Coordinator-Navigation-SwiftUI
//
//  Created by Rob Porter on 20/04/2024.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var coordinator: Coordinator
    var body: some View {
        ZStack {
            Color.green
            Text("Go to More Detail").onTapGesture {
                coordinator.route(to: .moreDetail, navigation: .push)
            }.foregroundStyle(.white)
        }.ignoresSafeArea()
    }
}
