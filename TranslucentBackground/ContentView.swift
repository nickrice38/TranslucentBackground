//
//  ContentView.swift
//  TranslucentBackground
//
//  Created by Nick Rice on 03/04/2023.
//

import SwiftUI
import CameraView

struct ContentView: View {
    var body: some View {
        ZStack {
            CameraView(cameraPosition: .back)
                .scaleEffect(1.3)
                .overlay(.thinMaterial)
            
//            Circle()
//                .frame(width: 320, height: 320)
//                .foregroundColor(.pink.opacity(0.5))
//                .blur(radius: 200)
//                .offset(x: -100, y: -400)
            
            ScrollView {
                VStack(spacing: 8) {
                    BalanceCard()
                    
                    VStack(spacing: -4) {
                        HStack{
                            Text("Insights")
                                .font(.custom("Inter-Medium", size: 16))
                            
                            Spacer()
                            
                            Text("See more")
                                .font(.custom("Inter-Medium", size: 16))
                                .foregroundColor(.blue)
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        
                        Chart()
                            .frame(height: 224)
                            .background(.white.opacity(0.5))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .padding(16)
                    }
                                    
                    VStack {
                        HStack {
                            Text("Transactions")
                                .font(.custom("Inter-Medium", size: 16))
                            
                            Spacer()
                            
                            Text("See all")
                                .font(.custom("Inter-Medium", size: 16))
                                .foregroundColor(.blue)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        
                        VStack(spacing: 0) {
                            ListItem(image: "0", name: "Freetrade", timestamp: "Today at 23:42", amount: "£90.00")
                            
                            ListItem(image: "1", name: "Nutmeg", timestamp: "Today at 21:16", amount: "£250.00")
                            
                            ListItem(image: "2", name: "EE", timestamp: "02 Apr at 09:16", amount: "£25.00")
                            
                            ListItem(image: "3", name: "Netflix", timestamp: "01 Apr at 13:07", amount: "£8.99")
                            
                            ListItem(image: "4", name: "Starbucks", timestamp: "01 Apr at 10:32", amount: "£4.00")
                        }
                        .background(Color.white.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.horizontal, 16)
                    }
                }
            }

        }
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BalanceCard: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Balance")
                    .font(.custom("Inter-Regular", size: 17))
                
                Text("£1238.42")
                    .font(.custom("Inter-Bold", size: 32))
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 20))
                .foregroundColor(.secondary)
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity)
        .frame(height: 98)
        .background(.white.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 16)
        .padding(.vertical, 16)
    }
}
