//
//  PllCasesListView.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 21.07.23.
//

import SwiftUI

struct PllCasesListView: View {

    @State var cases = pllCases
    
    var body: some View {
        
        NavigationView {
            ZStack{
                
                Color.black
                    .ignoresSafeArea()
                
                List {

                    ForEach($cases) { $pllCase in
                        
                        HStack{
                            Text("\(pllCase.name):")
                                .foregroundColor(.white)
                                .frame(width: 80)
                            
                            Spacer()
                            
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
                            
                            Spacer()
                            
                            Toggle(isOn: $pllCase.isSelected) {
                                Text("")
                            }
                            .toggleStyle(iOSCheckboxToggleStyle())
                        }
                    }
                    .listRowBackground(Color.black)
                }
                .scrollContentBackground(.hidden)
            }
        }
    }
}
struct PllCasesListView_Previews: PreviewProvider {
    static var previews: some View {
        PllCasesListView()
    }
}
