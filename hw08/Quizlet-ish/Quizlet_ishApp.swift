//
//  Quizlet_ishApp.swift
//  Quizlet-ish
//
//  Created by Shiqi Zhang on 4/15/22.
//

import SwiftUI
import Firebase
@main
struct Quizlet_ishApp: App {
    init(){
        FirebaseApp.configure(){
            AuthenticationService.signIn()
        }
    }V
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
