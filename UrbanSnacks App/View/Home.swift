//
//  Home.swift
//  UrbanSnacks App
//
//  Created by Soumya Ranjan Mishra on 29/03/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView {
            VStack{
                /// Header Section
                HStack{
                    Text("Order From The Best Of **Urban Snack**")
                        .font(.system(size: 30))
                        .padding(.trailing)
                    
                    Spacer()
                    
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .frame(width: 70, height: 90)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                }
                
            }.padding(30)
        }
    }
}

#Preview {
    Home()
}
