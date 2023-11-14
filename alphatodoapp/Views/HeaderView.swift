//
//  HeaderView.swift
//  alphatodoapp
//
//  Created by Eyüp Tüylü on 14.11.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("alpha-logo")
                .resizable()
                .frame(width: 150, height: 150)
            Text("Alpha")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding(.top, 30)
        }.padding(.top, 100)
    }
}

#Preview {
    HeaderView()
}
