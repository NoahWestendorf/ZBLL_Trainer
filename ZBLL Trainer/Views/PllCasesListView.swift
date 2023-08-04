//
//  PllCasesListView.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 21.07.23.
//

import SwiftUI

struct PllCasesListView: View {
    
    @State var pllCase = pllCases[0]
    
    var body: some View {
        NavigationView {
            ZStack{
                
                Color.black
                    .ignoresSafeArea()
                
                List {
                    ForEach(0..<21) { currentPllCase in
                        
                        HStack{
                            Text("\(pllCase.name):")
                                .foregroundColor(.white)
                                .frame(width: 80)
                            
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
                    .listRowBackground(Color.black)
                }
                .scrollContentBackground(.hidden)
                .background{
                    Color.black
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
