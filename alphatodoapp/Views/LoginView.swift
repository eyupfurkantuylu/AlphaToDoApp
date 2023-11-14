//
//  LoginView.swift
//  alphatodoapp
//
//  Created by Eyüp Furkan Tüylü on 13.11.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                // Header
                HeaderView()
                // Form - email, şifre ve button
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    TextField("Email Adresiniz", text: $viewModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Şifreniz", text: $viewModel.password)
                }
                .frame(height: 200)
                
                BigButton(title: "Giriş Yap") {
                    viewModel.login()
                }
               
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
