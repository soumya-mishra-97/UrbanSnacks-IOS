//
//  Cart.swift
//  UrbanSnacks App
//
//  Created by Soumya Ranjan Mishra on 07/04/25.
//

import SwiftUI

struct Cart: View {
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    /// Header Section
                    HStack{
                        Text("**Cart**")
                            .font(.system(size: 30))
                            .padding(.trailing)
                        
                        Spacer()
                        
                        Button {
                            print("")
                        } label: {
                            Text("3")
                                .font(.title2)
                                .padding()
                                .frame(width: 70, height: 90)
                                .background(.blue.opacity(0.5))
                                .foregroundColor(.black)
                                .clipShape(Capsule())
                            
                        }.foregroundColor(.black)
                        
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
                
                /// Cart Prodcuts
                ForEach(products) { items in
                    CartProductCard(product: items)
                }
                
                /// Total Products
                totalCheckout
                
                /// Payment Checkout
                Button {
                    print("")
                } label: {
                    Text("Make Payment")
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(.blue.opacity(0.5))
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.black)
                        .clipShape(Capsule())
                        .padding()
                }
                
            }
        }.navigationBarHidden(true)
    }
    
    var totalCheckout: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Delivery Amount")
                    .font(.system(size: 20, weight: .regular))
                Spacer()
                Text("$10.00")
                    .font(.system(size: 24, weight: .semibold))
            }
            
            Divider()
            
            Text("Total Amount")
                .font(.system(size: 20, weight: .regular))
                .padding(.top, 8)
                .padding(.bottom, 1)
            
            Text("USD 110.00")
                .font(.system(size: 36, weight: .semibold))
        }
        .padding(30)
        .frame(maxWidth: .infinity)
        .background(.blue.opacity(0.5))
        .font(.system(size: 20, weight: .semibold))
        .foregroundColor(.black)
        .clipShape(.rect(cornerRadius: 30))
        .padding()
    }
}

/// Cart Product Card View
struct CartProductCard: View {
    
    var product: ProductModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding()
                .frame(width: 80, height: 100)
                .clipShape(.circle)
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.system(size: 18, weight: .semibold))
                Text(product.category)
                    .font(.callout)
                    .opacity(0.5)
            }
            
            Spacer()
            
            Text("$\(product.price)")
                .font(.callout)
                .padding()
                .background(.blue.opacity(0.4))
                .clipShape(Capsule())
        }.padding(10)
    }
}

#Preview {
    Cart()
}
