//
//  Chart.swift
//  TranslucentBackground
//
//  Created by Nick Rice on 03/04/2023.
//

import SwiftUI

struct Chart: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 20) {
            Monday()
            Tuesday()
            Wednesday()
            Thursday()
            Friday()
            Saturday()
            Sunday()
        }
        .frame(maxWidth: .infinity)
    }
}

struct Chart_Previews: PreviewProvider {
    static var previews: some View {
        Chart()
    }
}

struct Monday: View {
    var body: some View {
        VStack(spacing: 12) {
            Image("Mon")
                .resizable()
                .frame(width: 29, height: 98)
            
            Text("M")
                .font(.custom("Inter-Medium", size: 15))
                .foregroundColor(.primary)
        }
    }
}

struct Tuesday: View {
    var body: some View {
        VStack(spacing: 12) {
            Image("Tue")
                .resizable()
                .frame(width: 29, height: 133)
            
            Text("T")
                .font(.custom("Inter-Medium", size: 15))
                .foregroundColor(.primary)
        }
    }
}

struct Wednesday: View {
    var body: some View {
        VStack(spacing: 12) {
            Image("Wed")
                .resizable()
                .frame(width: 29, height: 61)
            
            Text("W")
                .font(.custom("Inter-Medium", size: 15))
                .foregroundColor(.primary)
        }
    }
}

struct Thursday: View {
    var body: some View {
        VStack(spacing: 12) {
            Image("Thurs")
                .resizable()
                .frame(width: 29, height: 98)
            
            Text("T")
                .font(.custom("Inter-Medium", size: 15))
                .foregroundColor(.primary)
        }
    }
}

struct Friday: View {
    var body: some View {
        VStack(spacing: 12) {
            Image("Fri")
                .resizable()
                .frame(width: 29, height: 117)
            
            Text("F")
                .font(.custom("Inter-Medium", size: 15))
                .foregroundColor(.primary)
        }
    }
}

struct Saturday: View {
    var body: some View {
        VStack(spacing: 12) {
            Image("Sat")
                .resizable()
                .frame(width: 29, height: 164)
            
            Text("S")
                .font(.custom("Inter-Medium", size: 15))
                .foregroundColor(.primary)
        }
    }
}

struct Sunday: View {
    var body: some View {
        VStack(spacing: 12) {
            Image("Sun")
                .resizable()
                .frame(width: 29, height: 131)
            
            Text("S")
                .font(.custom("Inter-Medium", size: 15))
                .foregroundColor(.primary)
        }
    }
}
