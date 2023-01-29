//
//  chat_firestoreApp.swift
//  chat-firestore
//
//  Created by youlserf on 27/01/23.
//

import SwiftUI
import Firebase

@main
struct chat_firestoreApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
