//
//  SnacksStore.swift
//  UrbanSnacks App
//
//  Created by Soumya Ranjan Mishra on 07/04/25.
//

import SwiftUI

struct SnacksStore: View {
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    /// Header Section
                    HStack{
                        Text("Order From The BEST OF **URBAN SNACKS**")
                            .font(.system(size: 30))
                            .padding(.trailing)
                        
                        Spacer()
                        
                        Button {
                            mode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .frame(width: 70, height: 90)
                                .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                        }.foregroundColor(.black)
                    }
                }.padding(20)
                
                /// Snack Item Collections
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], content: {
                    ForEach(products) { item in
                        SnackItemCollectionsCard(product: item)
                    }
                })
            }
        }.navigationBarHidden(true)
    }
}

/// Snack Items Collection View
struct SnackItemCollectionsCard: View {
    
    var product: ProductModel
    
    var body: some View {
        ZStack{
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding(.trailing, -200)
                .rotationEffect(Angle(degrees: 30))
            ZStack {
                VStack(alignment: .leading , content:{
                    Text("\(product.name)")
                        .font(.system(size: 18, weight: .semibold))
                        .frame(width: 70)
                    
                    Text(product.category)
                        .font(.system(size: 18, weight: .semibold))
                        .padding()
                        .background(.white.opacity(0.5))
                        .clipShape(Capsule())
                    Spacer()
                    
                    HStack{
                        Text("$\(product.price).0")
                            .font(.system(size: 14, weight: .semibold))
                        Spacer()
                        Button{
                            print("Add to cart")
                        } label: {
                            Image(systemName: "basket")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 45, height: 40)
                                .background(.black)
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.trailing, -12)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .background(.white.opacity(0.9))
                    .clipShape(Capsule())
                })
            }
            .padding(20)
            .frame(width: 170, height: 215)
        }
        .frame(width: 170, height: 225)
        .background(product.color.opacity(0.13))
        .clipShape(.rect(cornerRadius: 30))
        .padding(.leading,10)
    }
}


#Preview {
    SnacksStore()
}
