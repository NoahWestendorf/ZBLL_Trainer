//
//  ContentView.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 30.05.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var timerCount = 0.0
    @State var timerIsRunning = false
    @State var heldDownTimerCount = 0.0
    @State var heldDownTimerIsRunnning = false
    @State var timerColor = Color(uiColor: .white)
    @State private var canTouchDown = true
    @State var timerWasRunning = false
    @State var previousPllCase: PllCase = pllCases[0]
    @State var currentPllCase: PllCase = pllCases[1]
    
    let timer = Timer.publish(every: 0.01, on: .main, in: .common) .autoconnect()
    let HeldDownTimer = Timer.publish(every: 0.01, on: .main, in: .common) .autoconnect()
    
    var body: some View {
        
        NavigationView{
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                VStack(alignment: .trailing) {
                    
                    NavigationLink {
                        PllCasesListView()
                    } label: {
                        Text("Select cases:")
                        Image(systemName: "checkmark.circle")
                        
                    }
                    .padding(.bottom, -5)
                    .fontWeight(.bold)
                    
                    $currentPllCase != nil ? (NavigationLink {
                        ScrambleDescriptionView(pllCase: $currentPllCase)
                    } label: {
                        Text(currentPllCase.scramble)
                            .fontWeight(.bold)
                            .font(.title)
                            .padding([.top])
                            .multilineTextAlignment(.leading)
                    }) : nil
                    
                    VStack{
                        Spacer()
                            .onReceive(HeldDownTimer) { _ in
                                if (heldDownTimerIsRunnning) {
                                    
                                    heldDownTimerCount += 0.01
                                    
                                    if (heldDownTimerCount <= 0.25) {
                                        timerColor = Color(uiColor: .red)
                                    } else {
                                        timerColor = Color(uiColor: .green)
                                    }
                                } else {
                                    
                                    heldDownTimerIsRunnning = false
                                }
                            }
                        
                        ZStack{
                            Color.black
                            
                            Text(String(format: "%.2f", timerCount))
                                .onReceive(timer) { _ in
                                    
                                    if (timerIsRunning){
                                        
                                        timerCount += 0.01
                                        
                                    } else {
                                        
                                        timerIsRunning = false
                                    }
                                }
                                .font(.system(size: 50, weight: .bold))
                                .foregroundColor(timerColor)
                        }
                        Spacer()
                    }
                    .gesture(
                        DragGesture(minimumDistance: 0)
                            .onChanged{ value in
                                if canTouchDown{
                                    if (timerIsRunning == true){
                                        let selectedPllCases = pllCases.filter{ $0.isSelected
                                                // && ["AaPerm", "AbPerm"].contains($0.name)
                                            
                                        }
                                        // print("\(selectedPllCases.count)")
                                        previousPllCase = currentPllCase
                                        currentPllCase = selectedPllCases.randomElement()!
                                        print(currentPllCase.name)
                                        
                                        timerWasRunning = true
                                        timerIsRunning = false
                                    } else if(timerIsRunning == false) {
                                        heldDownTimerIsRunnning = true
                                        timerWasRunning = false
                                    }
                                }
                                canTouchDown = false
                                
                            }
                            .onEnded{ Value in
                                if (timerWasRunning == false && timerColor == Color(uiColor: .green)){
                                    timerCount = 0
                                    timerIsRunning = true
                                } else {
                                    timerIsRunning = false
                                }
                                heldDownTimerCount = 0
                                heldDownTimerIsRunnning = false
                                timerColor = Color(uiColor: .white)
                                canTouchDown = true
                            }
                    )
                    HStack{
                        VStack (spacing: 10){
                            
                            Text("Previous scramble:")
                                .fontWeight(.bold)
                            
                            HStack{
                                drawPllRectangleTop(colorOfRectangle: previousPllCase.colors[0])
                                
                                drawPllRectangleTop(colorOfRectangle: previousPllCase.colors[1])
                                
                                drawPllRectangleTop(colorOfRectangle: previousPllCase.colors[2])
                                
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: previousPllCase.colors[3])
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: previousPllCase.colors[4])
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: previousPllCase.colors[5])
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: previousPllCase.colors[6])
                                
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: previousPllCase.colors[7])
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: previousPllCase.colors[8])
                            }
                            HStack{
                                
                                drawPllRectangleBottom(colorOfRectangle: previousPllCase.colors[9])
                                
                                drawPllRectangleBottom(colorOfRectangle: previousPllCase.colors[10])
                                
                                drawPllRectangleBottom(colorOfRectangle: previousPllCase.colors[11])
                                
                            }
                        }
                        //Draws the Cube, with way too many rectangles
                        
                        Spacer()
                        
                        VStack (spacing: 10){
                            
                            Text("Current scramble:")
                                .fontWeight(.bold)
                            
                            HStack{
                                drawPllRectangleTop(colorOfRectangle: currentPllCase.colors[0])
                                
                                drawPllRectangleTop(colorOfRectangle: currentPllCase.colors[1])
                                
                                drawPllRectangleTop(colorOfRectangle: currentPllCase.colors[2])
                                
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: currentPllCase.colors[3])
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: currentPllCase.colors[4])
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: currentPllCase.colors[5])
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: currentPllCase.colors[6])
                                
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: currentPllCase.colors[7])
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: currentPllCase.colors[8])
                            }
                            HStack{
                                
                                drawPllRectangleBottom(colorOfRectangle: currentPllCase.colors[9])
                                
                                drawPllRectangleBottom(colorOfRectangle: currentPllCase.colors[10])
                                
                                drawPllRectangleBottom(colorOfRectangle: currentPllCase.colors[11])
                                
                            }
                        }
                    }
                    .padding()
                }
                .foregroundColor(.white)
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
