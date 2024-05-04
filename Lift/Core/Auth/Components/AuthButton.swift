//
//  AuthButton.swift
//  Lift
//
//  Created by Nguyen Do on 4/26/24.
//

import SwiftUI

struct AuthButton: View {
    let action: () -> Void
    let label: String
    
    var body: some View {
        Button(action: action, label: {
            Text(label)
        })
        .frame(maxWidth: .infinity)
        .padding(10)
        .background(Color("PrimaryColor"))
        .foregroundStyle(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    AuthButton(action: {}, label: "Sign In")
}
