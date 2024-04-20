//
//  PopUpView2.swift
//  Coordinator-Navigation-SwiftUI
//
//  Created by Rob Porter on 20/04/2024.
//

import SwiftUI

struct PopUpModal2: View {
    @EnvironmentObject var coordinator: Coordinator
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                VStack {
                    Text("My Popup Modal")
                    Button("Close") {
                        coordinator.routeBack(navigation: .dismiss)
                    }
                }
                .frame(width: geometry.size.width, height: 200, alignment: .center)
                .background(.gray)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }.padding()
    }
}
