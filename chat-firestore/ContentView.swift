//
//  ContentView.swift
//  chat-firestore
//
//  Created by youlserf on 27/01/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messageManager = MessagesManager()
    var messageArray = ["Hello", "How are you doing?", "I've been building SwiftUI Aplication from scratch and it's so much fun"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollViewReader { proxy in
                    ScrollView{
                        ForEach(messageManager.messages, id: \.id) {
                            message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messageManager.lastMessageId){id in
                        withAnimation{
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
                
            }
            .background(Color("Peach"))
            
            MessaeField()
                .environmentObject(messageManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
