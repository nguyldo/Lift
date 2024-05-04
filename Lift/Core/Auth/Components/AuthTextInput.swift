//
//  TextInputView.swift
//  Lift
//
//  Created by Nguyen Do on 4/24/24.
//

import SwiftUI

struct AuthTextInput: View {
    @Binding var text: String
    let label: String
    let placeholderText: String
    var isSecure = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
            AuthTextField(text: $text, placeholderText: placeholderText, isSecure: isSecure)
        }
    }
}

#Preview {
    AuthTextInput(text: .constant(""), label: "Email Address", placeholderText: "name@email.com")
}
