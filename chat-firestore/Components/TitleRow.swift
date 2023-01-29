//
//  TitleRow.swift
//  chat-firestore
//
//  Created by youlserf on 27/01/23.
//

import SwiftUI

struct TitleRow: View {
var imageUrl = URL(string: "https://i.pinimg.com/originals/45/c6/82/45c682449c2ff31b3cd3afac269bed78.jpg")
    var name = "Rick Sanchez"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50,height: 50)
                    .cornerRadius(50)
        
            } placeholder: {
                    ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
        
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
