//
//  RegisterView.swift
//  alphatodoapp
//
//  Created by Eyüp Tüylü on 13.11.2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                // Header Kısmı
                HeaderView()
                // Regsiter Formu
                Form{
                    Section(header: Text("Kayıt Formu")) {
                        if !viewModel.errorMessage.isEmpty{
                            Text(viewModel.errorMessage)
                                .foregroundStyle(.red)
                        }
                        TextField("Tam adınız", text:$viewModel.name)
                            .autocorrectionDisabled()
                        TextField("Email adresiniz", text: $viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        SecureField("Şifreniz", text: $viewModel.password)
                    }
                }
                .frame(height: 250)
                
                BigButton(title: "Kayıt Ol", action: {
                    viewModel.register()
                })
                Spacer()
                
                
                
            }
            
        }
    }
}

#Preview {
    RegisterView()
}
