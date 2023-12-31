//
//  ScrambleDescriptionView.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 23.06.23.
//

import SwiftUI

struct ScrambleDescriptionView: View {
    
    @Binding var pllCase: PllCase
    
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
                                     
                        Text("")
                        
                        
                        Text(pllCase.name)
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
                                        drawPllRectangleTop(colorOfRectangle: pllCase.colors[0])
                                        
                                        drawPllRectangleTop(colorOfRectangle: pllCase.colors[1])
                                        
                                        drawPllRectangleTop(colorOfRectangle: pllCase.colors[2])
                                        
                                    }
                                    HStack{
                                        drawPllRectangleLeft(colorOfRectangle: pllCase.colors[3])
                                        
                                        drawOllRectangle(colorOfRectangle: .yellow)
                                        
                                        drawOllRectangle(colorOfRectangle: .yellow)
                                        
                                        drawOllRectangle(colorOfRectangle: .yellow)
                                        
                                        drawPllRectangleRight(colorOfRectangle: pllCase.colors[4])
                                        
                                    }
                                    HStack{
                                        
                                        drawPllRectangleLeft(colorOfRectangle: pllCase.colors[5])
                                        
                                        drawOllRectangle(colorOfRectangle: .yellow)
                                        
                                        drawOllRectangle(colorOfRectangle: .yellow)
                                        
                                        drawOllRectangle(colorOfRectangle: .yellow)
                                        
                                        drawPllRectangleRight(colorOfRectangle: pllCase.colors[6])
                                        
                                    }
                                    HStack{
                                        
                                        drawPllRectangleLeft(colorOfRectangle: pllCase.colors[7])
                                        
                                        drawOllRectangle(colorOfRectangle: .yellow)
                                        
                                        drawOllRectangle(colorOfRectangle: .yellow)
                                        
                                        drawOllRectangle(colorOfRectangle: .yellow)
                                        
                                        drawPllRectangleRight(colorOfRectangle: pllCase.colors[8])
                                    }
                                    HStack{
                                        
                                        drawPllRectangleBottom(colorOfRectangle: pllCase.colors[9])
                                        
                                        drawPllRectangleBottom(colorOfRectangle: pllCase.colors[10])
                                        
                                        drawPllRectangleBottom(colorOfRectangle: pllCase.colors[11])
                                    }
                                }
                                .padding()
                            }
                            
                            VStack{
                                Text("Scramble:")
                                    .font(.title)
                                    .padding([.leading, .bottom])
                                
                                Text(pllCase.scramble)
                                    .font(.title3)
                            }
                            .fontWeight(.bold)
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
    @State static var pllCase = PllCase(
        name: "skip",
        scramble: "U U'",
        colors: [.blue, .blue, .blue,
                 .red, .orange,
                 .red, .orange,
                 .red, .orange,
                 .green, .green, .green],
        isSelected: true
    )

    static var previews: some View {
        ScrambleDescriptionView(pllCase: $pllCase)
    }
}
