//
//  ContentView.swift
//  Coordinator-Navigation-SwiftUI
//
//  Created by Muhammad Farooq on 09/04/2024.
//

import SwiftUI

struct CoordinatorView: View {
    
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            Group {
                coordinator.build(page: .home)
            }
                .navigationBarTitleDisplayMode(.inline)
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page: page)
                }
        }
        .sheet(isPresented: Binding<Bool>(
            get: { self.coordinator.presentedPage != nil },
            set: { _ in }
        )) {
            if let page = self.coordinator.presentedPage {
                self.coordinator.build(page: page)
                    .presentationCompactAdaptation(self.coordinator.navigation == .modal  ? .fullScreenCover : .automatic)
                    .presentationDetents(self.coordinator.navigation == .modalFromBottom ? [.medium, .large]:  [.large])
                    .presentationDragIndicator(.hidden)
                    .presentationBackground(self.coordinator.navigation == .modal ? .clear : .primary)
                    .edgesIgnoringSafeArea(.all)
            }
        }
        .fullScreenCover(isPresented: Binding<Bool>(
            get: { self.coordinator.presentedFullPage != nil },
            set: { _ in }
        )) {
            let _ = print("FULLPAGE")
            if let page = self.coordinator.presentedFullPage {
                self.coordinator.build(page: page)
            }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    CoordinatorView()
}
