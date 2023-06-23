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
                    
                    Text("Scramble information")
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    HStack{
                        VStack{
                            Text("Case:")
                                .fontWeight(.bold)
                                .frame(maxWidth: 120, alignment: .leading)
                                .font(.title)
                            
                            Image("pll-example-2")
                        }
                        .background(Rectangle()
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                            .cornerRadius(15))
                        
                        
                        VStack{
                            Text("Scramble:")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.title)
                                .padding([.leading, .bottom])
                            
                            Text("R2 F' B' L2 F' B D' L2 F2 U L2 U' R2 U L2 B2")
                                .font(.title3)
                        }
                        .fontWeight(.bold)
                        .background(Rectangle()
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                            .cornerRadius(15))
                    }
                
                    Spacer()
                    
                }
                .foregroundColor(.white)
            }
        }
    }
}
struct ScrambleDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ScrambleDescriptionView()
    }
}
