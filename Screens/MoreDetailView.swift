//
//  MoreDetailView.swift
//  Coordinator-Navigation-SwiftUI
//
//  Created by Rob Porter on 20/04/2024.
//

import SwiftUI

struct MoreDetailView: View {
    @EnvironmentObject var coordinator: Coordinator
    var body: some View {
        ZStack {
            Color.white
            VStack {
                Text("Go to Parent").underline().foregroundStyle(.blue).onTapGesture {
                    coordinator.routeBack(navigation: .popAll)
                }
                Text("MODAL").underline().foregroundStyle(.blue).onTapGesture {
                    coordinator.route(to: .popUpModal, navigation: .modal)
                }
                Text("PRESENT").underline().foregroundStyle(.blue).onTapGesture {
                    coordinator.route(to: .popUpBottom, navigation: .present)
                }
                Text("BOTTOM SHEET").underline().foregroundStyle(.blue).onTapGesture {
                    coordinator.route(to: .popUpBottom, navigation: .modalFromBottom)
                }
            }
            
        }.ignoresSafeArea()
    }
}
