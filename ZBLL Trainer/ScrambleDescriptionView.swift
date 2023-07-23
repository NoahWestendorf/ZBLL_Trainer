//
//  ScrambleDescriptionView.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 23.06.23.
//

import SwiftUI

struct ScrambleDescriptionView: View {
    
    @Binding var pllCase: PllCase
    
    func drawOllRectangle(colorOfRectangle: Color) -> some View {
        Rectangle()
            .frame(width: 23, height: 23)
            .foregroundColor(colorOfRectangle)
    }
    
    func drawPllRectangleTop(colorOfRectangle: Color) -> some View {
        Rectangle()
            .frame(width: 23, height: 10)
            .padding(.bottom, -10)
            .foregroundColor(colorOfRectangle)
    }
    
    func drawPllRectangleBottom(colorOfRectangle: Color) -> some View {
        Rectangle()
            .frame(width: 23, height: 10)
            .padding(.top, -10)
            .foregroundColor(colorOfRectangle)
    }
    
    func drawPllRectangleLeft(colorOfRectangle: Color) -> some View {
        Rectangle()
            .frame(width: 10, height: 23)
            .padding(.trailing, -10)
            .foregroundColor(colorOfRectangle)
    }
    
    func drawPllRectangleRight(colorOfRectangle: Color) -> some View {
        Rectangle()
            .frame(width: 10, height: 23)
            .padding(.leading, -10)
            .foregroundColor(colorOfRectangle)
    }
    
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
                 .green, .green, .green]
    )

    static var previews: some View {
        ScrambleDescriptionView(pllCase: $pllCase)
    }
}
