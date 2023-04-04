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
            
            LinearGradient(colors: [Color("g1"), Color("g2"), Color("g3"), Color("g4"), Color("g5")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .blendMode(.saturation)
                .opacity(0.4)
            
            
            VStack {
                HStack(alignment: .center) {
                    Text("Overview")
                        .font(.custom("Inter-Bold", size: 28))
                        .padding(.top, 12)
                    
                    Spacer()
                    
                    Image(systemName: "person")
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.primary.opacity(0.6))
                        .frame(width: 40, height: 40)
                        .background(.white.opacity(0.5))
                        .clipShape(Circle())
                }
                .padding(.horizontal, 16)
                
                ScrollView {
                    VStack(spacing: 8) {
                        BalanceCard()
                            .shadow(color: .black.opacity(0.1), radius: 80, x: 0, y: 100)
                            .shadow(color: .black.opacity(0.14), radius: 10, x: 0, y: 12.5)

                        
                        VStack(spacing: -4) {
                            HStack{
                                Text("Insights")
                                    .font(.custom("Inter-Medium", size: 15))
                                
                                Spacer()
                                
                                Text("See more")
                                    .font(.custom("Inter-Medium", size: 15))
                                    .foregroundColor(.blue)
                                
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 16)
                            
                            Chart()
                                .frame(height: 224)
                                .background(LinearGradient(colors: [Color.white.opacity(0.7), Color.white.opacity(0.4)], startPoint: .bottom, endPoint: .top))
                                .overlay(
                                        RoundedRectangle(cornerRadius: 16)
                                            .stroke(LinearGradient(colors: [Color.white.opacity(0.3), Color.white.opacity(0.025)], startPoint: .bottom, endPoint: .top), lineWidth: 4)
                                    )
//                                .background(.white.opacity(0.5))
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .padding(16)
                                .shadow(color: .black.opacity(0.1), radius: 80, x: 0, y: 100)
                                .shadow(color: .black.opacity(0.14), radius: 10, x: 0, y: 12.5)
                        }
                                        
                        VStack {
                            HStack {
                                Text("Transactions")
                                    .font(.custom("Inter-Medium", size: 15))
                                
                                Spacer()
                                
                                Text("See all")
                                    .font(.custom("Inter-Medium", size: 15))
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
                            .background(LinearGradient(colors: [Color.white.opacity(0.7), Color.white.opacity(0.4)], startPoint: .bottom, endPoint: .top))
                            .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(LinearGradient(colors: [Color.white.opacity(0.3), Color.white.opacity(0.025)], startPoint: .bottom, endPoint: .top), lineWidth: 4)
                                )
//                            .background(Color.white.opacity(0.5))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .padding(.horizontal, 16)
                            .shadow(color: .black.opacity(0.1), radius: 80, x: 0, y: 100)
                            .shadow(color: .black.opacity(0.14), radius: 10, x: 0, y: 12.5)
                        }
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


