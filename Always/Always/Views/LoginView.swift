//
//  LoginView.swift
//  Always
//
//  Created by Isuru Nanayakkara on 2022-05-01.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        Form {
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            Button("Save") {
                
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 10)
            .disabled(username.isEmpty || password.isEmpty)
        }
        .frame(width: 240, height: 100)
        .padding(20)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewLayout(.fixed(width: 240, height: 100))
    }
}
