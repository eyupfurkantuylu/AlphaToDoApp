//
//  alphatodoappApp.swift
//  alphatodoapp
//
//  Created by Eyüp Tüylü on 13.11.2023.
//
import FirebaseCore
import SwiftUI

@main
struct alphatodoappApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
