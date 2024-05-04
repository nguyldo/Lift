//
//  AuthTextFieldView.swift
//  Lift
//
//  Created by Nguyen Do on 4/25/24.
//

import SwiftUI

struct AuthTextField: View {
    @Binding var text: String
    let placeholderText: String
    let isSecure: Bool
    
    var body: some View {
        HStack {
            if (isSecure) {
                SecureField(placeholderText, text: $text)
            } else {
                TextField(placeholderText, text: $text)
            }
        }
        .textFieldStyle(AuthTextFieldStyle())
        
            
    }
}

struct AuthTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(7)
            .background(Color("GrayInputColor"))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    AuthTextField(text: .constant(""), placeholderText: "Text field", isSecure: false)
}
