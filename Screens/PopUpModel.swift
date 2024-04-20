//
//  PopUpModel.swift
//  Coordinator-Navigation-SwiftUI
//
//  Created by Rob Porter on 20/04/2024.
//

import SwiftUI

struct PopUpModal: View {
    @EnvironmentObject var coordinator: Coordinator
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                VStack {
                    Color.red
                        .onTapGesture {
                            coordinator.routeBack(navigation: .dismiss)
                        }
                }.frame(width: geometry.size.width, height: 400, alignment: .center)
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }.padding()
    }
}
