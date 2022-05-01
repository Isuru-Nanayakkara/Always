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
        VStack {
            HStack {
                Text("Username")
                TextField("", text: $username)
            }
            HStack {
                Text("Password")
                TextField("", text: $password)
            }
            
            Button("Save") {
                
            }
        }.frame(width: 200, height: 150)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewLayout(.fixed(width: 300, height: 400))
    }
}
