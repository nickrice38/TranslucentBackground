//
//  ListItem.swift
//  TranslucentBackground
//
//  Created by Nick Rice on 03/04/2023.
//

import SwiftUI

struct ListItem: View {
    var image: String = ""
    var name: String = ""
    var timestamp: String = ""
    var amount: String = ""
    
    var body: some View {
        HStack(spacing: 16) {
            Image(image)
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 2) {
                Text(name)
                    .font(.custom("Inter-Bold", size: 19))
//                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.primary)
                
                Text(timestamp)
                    .font(.custom("Inter-Regular", size: 17))
//                    .font(.system(size: 17, weight: .regular, design: .rounded))
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            Text(amount)
//                .font(.system(size: 20, weight: .bold, design: .rounded))
                .font(.custom("Inter-Bold", size: 19))
        }
        .padding(16)
        .frame(maxWidth: .infinity)
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
