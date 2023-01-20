//
//  LoginResponse.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Karamjit Singh on 19/01/23.
//

import Foundation

struct LoginResponse: Decodable {
    let errorResponse: String?
    let data: LoginResponseData?
}

struct LoginResponseData: Decodable {
    let username, email: String
    let userId: Int
}
