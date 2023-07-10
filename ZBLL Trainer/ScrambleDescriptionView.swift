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
                        
                        Text("Ja perm")
                            .fontWeight(.bold)
                            .padding([.leading, .bottom])
                            .frame(maxWidth: .infinity ,alignment: .leading)
                        
                        HStack{
                            VStack{
                                Text("Case:")
                                    .fontWeight(.bold)
                                    .font(.title)
                        
                                VStack (spacing: 10){
                                    
                                    HStack{
                                        Rectangle()
                                            .frame(width: 23, height: 10)
                                            .padding(.bottom, -10)
                                            .foregroundColor(.orange)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 10)
                                            .padding(.bottom, -10)
                                            .foregroundColor(.orange)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 10)
                                            .padding(.bottom, -10)
                                            .foregroundColor(.red)
                                        
                                    }
                                    HStack{
                                        Rectangle()
                                            .frame(width: 10, height: 23)
                                            .padding(.trailing, -10)
                                            .foregroundColor(.blue)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 23)
                                            .foregroundColor(.yellow)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 23)
                                            .foregroundColor(.yellow)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 23)
                                            .foregroundColor(.yellow)
                                        
                                        Rectangle()
                                            .frame(width: 10, height: 23)
                                            .padding(.leading, -10)
                                            .foregroundColor(.blue)
                                    }
                                    HStack{
                                        Rectangle()
                                            .frame(width: 10, height: 23)
                                            .padding(.trailing, -10)
                                            .foregroundColor(.red)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 23)
                                            .foregroundColor(.yellow)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 23)
                                            .foregroundColor(.yellow)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 23)
                                            .foregroundColor(.yellow)
                                        
                                        Rectangle()
                                            .frame(width: 10, height: 23)
                                            .padding(.leading, -10)
                                            .foregroundColor(.blue)
                                        
                                    }
                                    HStack{
                                        Rectangle()
                                            .frame(width: 10, height: 23)
                                            .padding(.trailing, -10)
                                            .foregroundColor(.red)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 23)
                                            .foregroundColor(.yellow)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 23)
                                            .foregroundColor(.yellow)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 23)
                                            .foregroundColor(.yellow)
                                        
                                        Rectangle()
                                            .frame(width: 10, height: 23)
                                            .padding(.leading, -10)
                                            .foregroundColor(.orange)
                                    }
                                    HStack{
                                        Rectangle()
                                            .frame(width: 23, height: 10)
                                            .padding(.top, -10)
                                            .foregroundColor(.green)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 10)
                                            .padding(.top, -10)
                                            .foregroundColor(.green)
                                        
                                        Rectangle()
                                            .frame(width: 23, height: 10)
                                            .padding(.top, -10)
                                            .foregroundColor(.green)
                                    }
                                }
                                .padding()
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
