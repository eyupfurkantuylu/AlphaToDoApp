//
//  LoginView.swift
//  alphatodoapp
//
//  Created by Eyüp Tüylü on 13.11.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                // Header
                HeaderView()
                // Form - email, şifre ve button
                Form{
                    TextField("Email Adresiniz", text: $email)
                    SecureField("Şifreniz", text: $password)
                }
                .frame(height: 150)
                Button(action: {}, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundStyle(.primary)
                        Text("Giriş Yap")
                            .foregroundStyle(.white)
                    }
                })
                .frame(height: 50)
                .padding(.horizontal)
                Spacer()
                // Footer - hesabınız yok mu
                VStack{
                    Text("Buralarda yeni misin?")
                    NavigationLink("Yeni hesap oluştur!", destination: RegisterView())
                }
                .padding(.bottom, 150)
                
                
            }
        }
    }
}

#Preview {
    LoginView()
}
