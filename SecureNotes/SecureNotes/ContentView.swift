//
//  ContentView.swift
//  SecureNotes
//
//  Created by Асан Мырзахметов on 24.10.2026.
//

import SwiftUI

struct ContentView: View {
    private let authService = AuthService()
    private let networkService = NetworkService()

    var body: some View {
        VStack(spacing: 20) {
            Text("SecureNotes")
                .font(.largeTitle)

            Button("Login") {
                let success = authService.login(
                    email: "student@example.com",
                    password: "test-password"
                )

                if success {
                    networkService.fetchNotes()
                }
            }

            Button("Fetch Notes") {
                networkService.fetchNotes()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
