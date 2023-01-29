//
//  Message.swift
//  chat-firestore
//
//  Created by youlserf on 27/01/23.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received:Bool
    var timestamp: Date
}
