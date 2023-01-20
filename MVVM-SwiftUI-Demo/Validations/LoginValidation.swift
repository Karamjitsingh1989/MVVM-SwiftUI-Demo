//
//  LoginValidation.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Harsimrat on 19/01/23.
//

import Foundation


struct ValidationResult {
    var success:Bool = false
    var errorMessage: String?
}

struct LoginVaidation {
    // validate user inputs
    func validateUserInputs(userLoginModel: LoginDataModel) -> ValidationResult {
        
        if (userLoginModel.userEmail.isEmpty || userLoginModel.userPassword.isEmpty){
            return ValidationResult(success: false, errorMessage: "Email and Password field should not be empty!")
        }
        else if isValidEmail(emailId: userLoginModel.userEmail) == false {
            return ValidationResult(success: false, errorMessage: "Please enter valid email address!")
        }
        return ValidationResult(success: true, errorMessage: nil)
    }
    // Validate the user has enter the valid email id
    private func isValidEmail(emailId: String) -> Bool {
        
        guard emailId.isEmpty == false else {
            return false
        }
        let regex = try! NSRegularExpression(pattern: constants.email_regular_expression, options: .caseInsensitive)
        let result = regex.firstMatch(in: emailId, options: [], range: NSRange(location: 0, length: emailId.count)) != nil
        
        return result
    }
}
