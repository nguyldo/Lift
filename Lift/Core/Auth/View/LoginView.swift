//
//  LoginView.swift
//  Lift
//
//  Created by Nguyen Do on 4/24/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                AuthTextInput(text: $email, label: "Email", placeholderText: "name@email.com")
                AuthTextInput(text: $password, label: "Password", placeholderText: "Enter your password", isSecure: true)
                Spacer()
                AuthButton(action: {}, label: "Sign In")
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
