//
//  Lab7Demonstration.swift
//  
//
//  Created by Асан Мырзахметов on 24.10.2026.
//

import Foundation

// 1. Hardcoded secret
let apiKey = "sk_test_123456789_secret"

// 2. Force try: application may crash if an error occurs
func loadConfiguration() -> Data {
    let path = "/tmp/config.json"
    let url = URL(fileURLWithPath: path)

    return try! Data(contentsOf: url)
}
