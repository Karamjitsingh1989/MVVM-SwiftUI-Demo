//
//  LoginRequest.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Harsimrat on 19/01/23.
//

import Foundation

struct LoginRequest: Encodable {
    let userEmail, userPassword: String
}
