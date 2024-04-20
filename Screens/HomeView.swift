//
//  HomeView.swift
//  Coordinator-Navigation-SwiftUI
//
//  Created by Rob Porter on 20/04/2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var coordinator: Coordinator
    var body: some View {
        VStack(alignment: .center) {
            Text("SwitfUI Navigation\nUsing Coordinator Pattern").font(.headline)  .multilineTextAlignment(.center)
                .lineLimit(2)
            Spacer().frame(height: 100)
            Text("MODAL").underline().foregroundStyle(.blue).onTapGesture {
                coordinator.route(to: .popUpModal, navigation: .modal)
            }
            Text("MY MODAL").underline().foregroundStyle(.blue).onTapGesture {
                coordinator.route(to: .popUpModal2, navigation: .modal)
            }
            Text("PRESENT SHEET").underline().foregroundStyle(.blue).onTapGesture {
                coordinator.route(to: .popUpBottom, navigation: .present)
            }
            Text("PRESENT FULL").underline().foregroundStyle(.blue).onTapGesture {
                coordinator.route(to: .fullScreen, navigation: .full)
            }
            Text("BOTTOM SHEET").underline().foregroundStyle(.blue).onTapGesture {
                coordinator.route(to: .popUpBottom, navigation: .modalFromBottom)
            }
            Text("PUSH").underline().foregroundStyle(.blue).onTapGesture {
                coordinator.route(to: .detailView, navigation: .push)
            }
        }
        .padding()
    }
}
