//
//  ContentView.swift
//  alphatodoapp
//
//  Created by Eyüp Furkan Tüylü on 13.11.2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currenUserId.isEmpty{
            ToDoListView()
        } else{
            LoginView()
        }
        
    }
}

#Preview {
    MainView()
}
