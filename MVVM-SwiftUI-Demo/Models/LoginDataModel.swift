//
//  LoginDataModel.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Harsimrat on 19/01/23.
//

import Foundation

struct LoginDataModel {
   var userEmail: String = String()
   var userPassword: String = String()
   var errorMessage: String = String()
   var navigationActive: Bool = true
   var isPresentingAlert: Bool = false
}
