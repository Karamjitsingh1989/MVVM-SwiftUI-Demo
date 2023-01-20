//
//  LoginView.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Karamjit Singh on 19/01/23.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var loginViewModel: LoginViewModel = LoginViewModel()
    @State private var isNavigating : Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: HomeTabView(), isActive: $isNavigating) { EmptyView() }
                
                Text(String(localized: "login_heading")).font(.largeTitle)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all)
                
                TextFieldView(fieldName: $loginViewModel.loginModel.userEmail, heading:String(localized:"email_heading"))
                
                Text(String(localized: "password")).font(.subheadline).foregroundColor(.gray).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top:20, leading: 20, bottom:2, trailing: 20))
                SecureField("", text:$loginViewModel.loginModel.userPassword ).padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)).textContentType(.emailAddress)
                    .frame(height: 50)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                    .padding([.horizontal],20)
                Button {
                    debugPrint("Forgot Password?")
                    loginViewModel.loginModel.isPresentingAlert = true
                    loginViewModel.loginModel.errorMessage = "Forgot password under progress"
                    
                } label: {
                    Text(String(localized:"forgot_password")).font(.footnote).bold().underline()
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 0))
                
                Button {
                    if loginViewModel.validateUserInputs() {
                        self.isNavigating = true
                    }
                } label: {
                    Text(String(localized:"login_cta")).bold()
                        .foregroundColor(.white).frame(maxWidth:.infinity, maxHeight: 50, alignment: .center).background(.blue).cornerRadius(8)
                }
                .padding(20)
                
                
            }.alert(isPresented: $loginViewModel.loginModel.isPresentingAlert) {
                Alert(title: Text("Alert!"), message: Text(loginViewModel.loginModel.errorMessage), dismissButton: .cancel(Text("Ok")))
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
