//
//  AuthService.swift
//  SecureNotes
//
//  Created by Асан Мырзахметов on 24.10.2026.
//

import Foundation

final class AuthService {
    func login(email: String, password: String) -> Bool {
        print("Login email: \(email)")
        print("Login password: \(password)")

        return !email.isEmpty && !password.isEmpty
    }
}
