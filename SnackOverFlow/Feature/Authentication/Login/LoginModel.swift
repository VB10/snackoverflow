//
//  LoginModel.swift
//  snackoverflow
//
//  Created by vb10 on 28.03.2023.
//

import Foundation


// MARK: - LoginRequest
struct LoginRequest: Encodable {
    let email, password: String
}


// MARK: - LoginResponse
struct LoginResponse: Codable {
    let token: String
}
