//
//  NetworkService.swift
//  SecureNotes
//
//  Created by Асан Мырзахметов on 24.10.2026.
//

import Foundation

final class NetworkService {
    func fetchNotes() {
        guard let url = URL(string: AppConfig.baseURL) else {
            return
        }

        var request = URLRequest(url: url)

        request.setValue(
            AppConfig.apiKey,
            forHTTPHeaderField: "X-API-Key"
        )

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Network error: \(error)")
                return
            }

            print("Response received: \(data?.count ?? 0) bytes")
        }.resume()
    }
}
