//
//  ProductDetailUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/13/21.
//

import SwiftUI

struct ProductDetailUIView: View {
    
    @Binding var selectedProduct: Product?
    
    @Binding var detailIsShown: Bool
    
    private let gradient: Gradient = Gradient(colors: [.white, .clear])
    
    var body: some View {
        
        GeometryReader{reader in
         
            ScrollView {
                
                ZStack(alignment: .top) {
                    
                    if selectedProduct != nil {
                        
                        VStack {
                            Image(selectedProduct!.imageName)
                                .resizable()
                                .frame(width: reader.size.width, height: reader.size.height * 0.45)
                        }
                    }

                    LinearGradient(
                        gradient: gradient,
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )

                    VStack(alignment: .leading, spacing: 2) {
                        
                        HStack {
                            
                            Image(systemName: "arrow.backward.circle")
                                .foregroundColor(.black)
                                .font(.title2)
                                .onTapGesture {
                                    detailIsShown.toggle()
                                    selectedProduct = nil
                                }
                            
                            Spacer()
                        }
                        
                        Text(selectedProduct?.name ?? "")
                            .bold()
                            .foregroundColor(selectedProduct?.color ?? Color.white)
                            .font(.system(.largeTitle, design: .rounded))
                            .padding(.top, 45)
                        
                        Text("Price")
                            .fontWeight(.light)
                            .font(.system(.callout, design: .rounded))
                            .padding(.top)

                        
                        Text(selectedProduct?.costDisplay ?? "$0.00")
                            .fontWeight(.medium)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(selectedProduct?.color ?? Color.white)
                    }
                    .padding(.top, 64)
                    .padding(.horizontal)
                }
                .overlay(
                    HStack(spacing: 10) {
                        
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0.0, y: 0.0)
                            .overlay(
                                Image(systemName: "pencil")
                                    .font(Font.title2.weight(.semibold))
                                    .foregroundColor(.orange)
                            )
                        
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0.0, y: 0.0)
                            .overlay(
                                Image(systemName: "trash")
                                    .font(Font.body.weight(.semibold))
                                    .foregroundColor(.pink)
                            )
                    }
                    .offset(y: 20), alignment: .bottom
                )
                .frame(height: reader.size.height * 0.45)
                
                HStack(spacing: 10) {
                    
                    ZStack(alignment: .top) {
                        
                        Rectangle()
                            .frame(width: reader.size.width / 2 - 20, height: 110)
                            .cornerRadius(15.0)
                            .foregroundColor(Color("DetailReceiptsBackground"))
                        
                        VStack {
                            Rectangle()
                                .frame(width: 40, height: 40)
                                .cornerRadius(5.0)
                                .foregroundColor(Color("DetailReceiptsImageBackground"))
                                .padding(.top)
                                .overlay(
                                    Image(systemName: "text.alignleft")
                                        .font(Font.title2.weight(.bold))
                                        .foregroundColor(.white)
                                        .padding(.top)
                            )
                            Text("2 Receipt")
                                .font(.system(.caption))
                                .foregroundColor(Color("DetailReceiptsImageBackground")
                                )
                        }
                    }
                    
                    ZStack(alignment: .top) {
                        
                        Rectangle()
                            .frame(width: reader.size.width / 2 - 20, height: 110)
                            .cornerRadius(15.0)
                            .foregroundColor(Color("DetailReceiptsBackground"))
                        
                        VStack {
                            Rectangle()
                                .frame(width: 40, height: 40)
                                .cornerRadius(5.0)
                                .foregroundColor(Color("DetailReceiptsImageBackground"))
                                .padding(.top)
                                .overlay(
                                    Image(systemName: "barcode")
                                        .font(Font.title2.weight(.bold))
                                        .foregroundColor(.white)
                                        .padding(.top)
                            )
                            Text("12801669167")
                                .font(.system(.caption))
                                .foregroundColor(Color("DetailReceiptsImageBackground")
                                )
                        }
                    }
                }
                .padding(.top, 40)

                HStack {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Purchased on")
                            .font(.system(.caption))
                            .foregroundColor(.blue)
                        Text("Jan 20, 2020")
                            .font(.system(.callout))
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Category")
                            .font(.system(.caption))
                            .foregroundColor(.purple)
                        Text(selectedProduct?.category.rawValue ?? "")
                            .font(.system(.callout))
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 20)
                .padding(.top, 35)
                
                VStack(alignment: .leading) {
                    
                    Text("Description")
                    Text(selectedProduct?.description ?? "")
                }
            }
            .background(Color.white)
        }
    }
}

struct ProductDetailUIView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
        
            ProductDetailUIView(selectedProduct: .constant(sampleData[0]), detailIsShown: .constant(false))
            
//            ProductDetailUIView(change: .constant(false), selectedProduct: .constant(sampleData[1]))
//
//            ProductDetailUIView(change: .constant(false), selectedProduct: .constant(sampleData[2]))
//
//            ProductDetailUIView(change: .constant(false), selectedProduct: .constant(sampleData[3]))
//
//            ProductDetailUIView(change: .constant(false), selectedProduct: .constant(sampleData[4]))
//
//            ProductDetailUIView(change: .constant(false), selectedProduct: .constant(sampleData[5]))
//
//            ProductDetailUIView(change: .constant(false), selectedProduct: .constant(sampleData[6]))
        }
    }
}
