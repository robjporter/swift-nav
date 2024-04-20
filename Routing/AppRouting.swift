//
//  AppRouting.swift
//  Coordinator-Navigation-SwiftUI
//
//  Created by Rob Porter on 20/04/2024.
//

import SwiftUI

enum Page {
    case home
    case popUpModal
    case popUpModal2
    case popUpBottom
    case detailView
    case moreDetail
    case fullScreen
}

extension Coordinator {
    @ViewBuilder
    func build(page: Page) -> some View {
        let _ = print("PAGE: \(page)")
        switch page {
        case .home:
            HomeView()
        case .popUpModal:
            PopUpModal()
        case .popUpModal2:
            PopUpModal2()
        case .popUpBottom:
            PopUpBottom()
        case .fullScreen:
            FullScreenView()
        case .detailView:
            DetailView()
        case .moreDetail:
            MoreDetailView()
        }
    }
}
