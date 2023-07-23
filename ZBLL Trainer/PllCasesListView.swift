//
//  PllCasesListView.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 21.07.23.
//

import SwiftUI

struct PllCasesListView: View {
    
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
        NavigationView {
            List {
                ForEach( 0..<21) { index in
                    var pllCase = pllCases[index]
                    
                    HStack{
                        Text("\(pllCase.name):")
                        
                        VStack{
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
                    }
                }
            }
        }
    }
}
struct PllCasesListView_Previews: PreviewProvider {
    static var previews: some View {
        PllCasesListView()
    }
}
