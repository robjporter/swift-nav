//
//  FullScreen.swift
//  Coordinator-Navigation-SwiftUI
//
//  Created by Rob Porter on 20/04/2024.
//

import SwiftUI

struct FullScreenView: View {
    @EnvironmentObject var coordinator: Coordinator
    var body: some View {
        VStack(alignment: .center) {
            Text("SwitfUI Navigation\nUsing Coordinator Pattern").font(.headline)  .multilineTextAlignment(.center)
                .lineLimit(2)
            Button("Close") {
                coordinator.routeBack(navigation: .dismiss)
            }
        }
        .background(.white)
    }
}
