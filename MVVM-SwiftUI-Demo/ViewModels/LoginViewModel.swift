//
//  LoginViewModel.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Harsimrat on 19/01/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var loginModel = LoginDataModel()
    private let loginValidation = LoginVaidation()
    
    func validateUserInputs()-> Bool{
        
        let validationResponse = loginValidation.validateUserInputs(userLoginModel: loginModel)

        if !validationResponse.success {
            loginModel.isPresentingAlert = true
            loginModel.errorMessage = validationResponse.errorMessage ?? "error Occured"
        }
        loginModel.navigationActive = true
        return true
    }
    
    
    
}
