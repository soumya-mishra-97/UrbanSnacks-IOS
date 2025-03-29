//
//  Home.swift
//  UrbanSnacks App
//
//  Created by Soumya Ranjan Mishra on 29/03/25.
//

import SwiftUI

struct Home: View {
    
    @State var selectedCategory = ""
    
    var body: some View {
        ScrollView {
            VStack{
                /// Header Section
                HStack{
                    Text("Order From The BEST OF **URBAN SNACKS**")
                        .font(.system(size: 30))
                        .padding(.trailing)
                    
                    Spacer()
                    
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .frame(width: 70, height: 90)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                }
            }.padding(20)
            
            /// Category List
            CategoryView
            
            /// Snacks Collection View
            HStack{
                Text("Urban Snacks \n**COLLECTIONS**")
                    .font(.system(size: 24))
                    .padding(.trailing)
                
                Spacer()
                
                Image(systemName: "arrow.right")
                    .imageScale(.large)
                    .frame(width: 40, height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke().opacity(0.4))
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 15)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(products) { item in
                        ProductCard(product: item)
                    }
                }.padding(.trailing, 20)
            }
        }
    }
    
    /// Category List View
    var CategoryView: some View {
        HStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(categories){ item in
                        Button {
                            selectedCategory = item.title
                        } label: {
                            HStack{
                                if item.title != "All"{
                                    Image(item.icon)
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 22, height: 22)
                                        .foregroundColor(selectedCategory == item.title ? .yellow : .black)
                                }
                                
                                Text(item.title)
                            }
                            .padding(20)
                            .background(selectedCategory == item.title ? .black : .gray.opacity(0.1))
                            .foregroundColor(selectedCategory != item.title ? .black : .white)
                            .clipShape(Capsule())
                        }
                        
                    }
                }.padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    Home()
}

/// Product Card
struct ProductCard: View {
    
    var product: ProductModel
    
    var body: some View {
        ZStack {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding(.trailing, -200)
                .rotationEffect(Angle(degrees: 36))
            ZStack{
                VStack (alignment: .leading , content:{
                    Text(product.name)
                        .font(.system(size: 32, weight: .semibold))
                
                    Text(product.category)
                        .font(.callout)
                        .padding()
                        .background(.white.opacity(0.6))
                        .clipShape(Capsule())
                    
                    Spacer()
                    
                    /// Price
                    PriceView
                })
            }
            .padding(30)
            .frame(width: 340, height: 425)
        }
        .frame(width: 340, height: 425)
        .background(product.color.opacity(0.15))
        .clipShape(.rect(cornerRadius: 60))
        .padding(.leading, 20)
    }
    
    /// Price View
    var PriceView: some View {
        HStack{
            Text("$\(product.price).0")
                .font(.system(size: 24, weight: .semibold))
            Spacer()
            Button{
                print("")
            } label: {
                Image(systemName: "basket")
                    .imageScale(.large)
                    .padding()
                    .frame(width: 90, height: 60)
                    .background(.black)
                    .clipShape(Capsule())
                    .foregroundColor(.white)
            }
            .padding(.horizontal, -12)
        }
        .padding(.leading)
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 80)
        .background(.white.opacity(0.8))
        .clipShape(Capsule())
    }
}
