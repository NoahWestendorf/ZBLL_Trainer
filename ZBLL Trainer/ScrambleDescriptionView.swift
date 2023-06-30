//
//  ScrambleDescriptionView.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 23.06.23.
//

import SwiftUI

struct ScrambleDescriptionView: View {
    var body: some View {
        NavigationView{
            ZStack{
                
                Color.black
                    .ignoresSafeArea()
                
                VStack{
                    
                    Spacer()
                    
                    VStack{
                        Text("Scramble information")
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Fperm")
                            .fontWeight(.bold)
                            .padding([.leading, .bottom])
                            .frame(maxWidth: .infinity ,alignment: .leading)
                        
                        HStack{
                            VStack{
                                Text("Case:")
                                    .fontWeight(.bold)
                                    .font(.title)
                        
                                Image("pll-example-2")
                            }
                            
                            VStack{
                                Text("Scramble:")
                                    .font(.title)
                                    .padding([.leading, .bottom])
                                
                                Text("R2 F' B' L2 F' B D' L2 F2 U L2 U' R2 U L2 B2")
                                    .font(.title3)
                            }
                            .fontWeight(.bold)
                        }
                        
                        HStack{
                            Spacer()
                            Text("Fastest Time")
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Text("Average Time")
                                .font(.title3)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        HStack(spacing: 50){
                            Spacer()
                            Text("0.98")
                            Spacer()
                            Text("1.35")
                            Spacer()
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.gray)
                        .cornerRadius(15)
                        .padding())
                    
                    Spacer()
                }
            }
        }
    }
}
struct ScrambleDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ScrambleDescriptionView()
    }
}
