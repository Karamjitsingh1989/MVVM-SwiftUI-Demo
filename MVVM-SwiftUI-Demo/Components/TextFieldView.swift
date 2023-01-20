//
//  TextFieldView.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Harsimrat on 19/01/23.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var fieldName: String
    var heading: String
    
    var body: some View {
        VStack {
            Text(heading).font(.subheadline).foregroundColor(.gray).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top: 0, leading: 20, bottom:2, trailing: 20))
            TextField("", text:$fieldName).padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                .frame(height: 50)
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(fieldName: .constant(""), heading: "")
    }
}
