//
//  BalanceCard.swift
//  TranslucentBackground
//
//  Created by Nick Rice on 04/04/2023.
//

import SwiftUI

struct BalanceCard: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Balance")
                    .font(.custom("Inter-Regular", size: 17))
                    .foregroundColor(.secondary)
                
                Text("£1238.42")
                    .font(.custom("Inter-Bold", size: 32))
                    .foregroundColor(.primary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 20))
                .foregroundColor(.secondary)
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity)
        .frame(height: 98)
        .background(LinearGradient(colors: [Color.white.opacity(0.7), Color.white.opacity(0.35)], startPoint: .bottom, endPoint: .top))
        .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(LinearGradient(colors: [Color.white.opacity(0.3), Color.white.opacity(0.025)], startPoint: .bottom, endPoint: .top), lineWidth: 4)
            )
//        .background(.white.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 16)
        .padding(.vertical, 16)
    }
}

struct BalanceCard_Previews: PreviewProvider {
    static var previews: some View {
        BalanceCard()
    }
}
