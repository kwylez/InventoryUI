//
//  DashboardUIView.swift
//  InventoryUI
//
//  Created by Cory D. Wiles on 1/6/21.
//

import SwiftUI

struct DashboardUIView: View {

    let gradientColors: Gradient = Gradient(colors: [
                                        .dashboardStart,
                                        .dashboardMiddle,
                                        .dashboardEnd
                                    ]
                                )
    let gradientHeight: CGFloat
    
    // MARK: Private (properties)
    
    private let ringGradient: LinearGradient =
        LinearGradient(
            gradient: Gradient(colors: [
                .dashboardYellow,
                .dashboardOrange,
                .dashboardPink
            ]),
            startPoint: .trailing,
            endPoint: .leading
        )
    
    var body: some View {

        ZStack(alignment: .top) {
                
                VStack {
    
                    LinearGradient(
                        gradient: gradientColors,
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .frame(height: gradientHeight)
                    Spacer()
                    ScrollView {
                        
                        LazyVStack(alignment: .leading, spacing: 5) {
                            
                            Text("Recent Purchases")
                                .bold()
                                .font(.system(.title2, design: .rounded))
                            
                            ScrollView(.horizontal) {
                                
                                LazyHStack(spacing: 10) {
                                
                                    ForEach(sampleData, id: \.id){product in
                                    
                                        Image(product.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 200, height: 125)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            
                            Text("Last Month")
                                .bold()
                                .font(.system(.title3, design: .rounded))
                            
                            ScrollView(showsIndicators: false) {
                                
                                LazyVStack(alignment: .leading){
                                
                                    ForEach(sampleData, id: \.id){product in
                                        
                                        HStack(alignment: .top) {
                                            
                                            Image(product.imageName)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 50, height: 50)
                                                .shadow(color: .red, radius: 10, x: 8, y: -8)
                                                .cornerRadius(10)
                                            
                                            VStack(alignment: .leading, spacing: 5) {
                                                
                                                Text(product.name)
                                                    .bold()
                                                    .font(.system(.body, design: .rounded))
                                                Text(product.purchaseDateCategory)
                                                    .font(.system(.footnote, design: .rounded))
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                            VStack {
                                                Spacer()
                                                Text(product.costDisplay)
                                                    .bold()
                                                    .font(.system(.footnote, design: .rounded))
                                                    .foregroundColor(.gray)
                                                Spacer()
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.top, 30)
                    }
                    .padding([.horizontal, .top], 20)
                }

                VStack(alignment: .leading) {
                    
                    VStack(spacing: 5.0) {
                        HStack {
                            Text("Overview")
                                .font(.system(.largeTitle, design: .rounded))
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }

                        HStack {
                            Text("Your monthly budget was $2000")
                                .foregroundColor(Color.white.opacity(0.3))
                                .font(.system(.footnote, design: .rounded))
                            Spacer()
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 40)

                    HStack(alignment: .top) {

                        VStack(alignment: .leading, spacing: 30) {
                            
                            VStack(alignment: .leading) {
        
                                Text("40%")
                                    .font(.system(.title, design: .rounded))
                                    .bold()
                                    .foregroundColor(.dashboardPink)
                                Text("Appliances")
                                    .foregroundColor(Color.white.opacity(0.3))
                                    .font(.system(.footnote, design: .rounded))
                            }
                            
                            VStack(alignment: .leading) {
        
                                Text("20%")
                                    .font(.system(.title, design: .rounded))
                                    .bold()
                                    .foregroundColor(.dashboardOrange)
                                Text("Clothing")
                                    .foregroundColor(Color.white.opacity(0.3))
                                    .font(.system(.footnote, design: .rounded))
                            }
                            
                            VStack(alignment: .leading) {
        
                                Text("15%")
                                    .font(.system(.title, design: .rounded))
                                    .bold()
                                    .foregroundColor(.dashboardOrange)
                                Text("Entertainment")
                                    .foregroundColor(Color.white.opacity(0.3))
                                    .font(.system(.footnote, design: .rounded))
                            }
                        }.padding(.leading, 20)
                        
                        Spacer()
                        
                        VStack {

                            ZStack {
                                Circle()
                                    .trim(from: 0, to: 0.75)
                                    .stroke(
                                        ringGradient,
                                        style: StrokeStyle(lineWidth: 12, lineCap: CGLineCap.round)
                                    )
                                    
                                    .rotationEffect(.degrees(-90))
                                    .frame(width: 125, height: 125)
                                    .overlay(
                                        VStack {
                                            Text("75%")
                                                .foregroundColor(.dashboardYellow)
                                                .bold()
                                                .font(.system(.title, design: .rounded))
                                                
                                        }
                                    )
                            }
                            
                            VStack {
                                
                                Text("Remaining")
                                    .foregroundColor(Color.white.opacity(0.3))
                                    .font(.system(.footnote, design: .rounded))
                                Text("$500")
                                    .foregroundColor(Color.white.opacity(0.5))
                                    .bold()
                                    .font(.system(.footnote, design: .rounded))
                            }
                            .padding(.top, 20)
                        }
                        .padding(.top, 20)
                        .padding(.trailing, 40)
                    }
                    
                    Spacer()
                }
                .padding(.top, 64)
            }
    }
}

struct DashboardUIView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardUIView(gradientHeight: 480)
    }
}
