//
//  ContentView.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 30.05.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var TimerCount = 0.0
    @State var TimerIsRunning = false
    @State var HeldDownTimerCount = 0.0
    @State var HeldDownTimerIsRunnning = false
    @State var CurrentColor = Color(uiColor: .white)
    @State private var canTouchDown = true
    @State var TimerWasRunning = false
    
    let timer = Timer.publish(every: 0.01, on: .main, in: .common) .autoconnect()
    let HeldDownTimer = Timer.publish(every: 0.01, on: .main, in: .common) .autoconnect()
    
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
    //Functions for drawing every type of rectangle
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                    
                VStack{
                    
                    NavigationLink {
                        ScrambleDescriptionView()
                    } label: {
                        Text("R2 F' B' L2 F' B D' L2 F2 U L2 U' R2 U L2 B2")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.vertical, 40.0)
                            .multilineTextAlignment(.leading)
                    }
                    
                    VStack{
                        Spacer()
                            .onReceive(HeldDownTimer) { _ in
                                if (HeldDownTimerIsRunnning) {
                                    
                                    HeldDownTimerCount += 0.01
                                    
                                    if (HeldDownTimerCount <= 0.5) {
                                        CurrentColor = Color(uiColor: .red)
                                    } else {
                                        CurrentColor = Color(uiColor: .green)
                                    }
                                } else {
                                    
                                    HeldDownTimerIsRunnning = false
                                }
                            }
                        
                        ZStack{
                            Color.black
                            
                            Text(String(format: "%.2f", TimerCount))
                                .onReceive(timer) { _ in
                                    if (TimerIsRunning){
                                        
                                        TimerCount += 0.01
                                        
                                    } else {
                                        
                                        TimerIsRunning = false
                                    }
                                }
                                .font(.system(size: 50, weight: .bold))
                                .foregroundColor(CurrentColor)
                        }
                        Spacer()
                    }
                    .gesture(
                        DragGesture(minimumDistance:0)
                            .onChanged{ value in
                                if canTouchDown{
                                    if (TimerIsRunning == true){
                                        
                                        TimerWasRunning = true
                                        TimerIsRunning = false
                                        
                                    } else if(TimerIsRunning == false) {
                                        HeldDownTimerIsRunnning = true
                                        TimerWasRunning = false
                                        TimerCount = 0
                                    }
                                }
                                canTouchDown = false
                                
                            }
                            .onEnded{ Value in
                                if (TimerWasRunning == false && CurrentColor == Color(uiColor: .green)){
                                    TimerIsRunning = true
                                } else {
                                    TimerIsRunning = false
                                }
                                HeldDownTimerCount = 0
                                HeldDownTimerIsRunnning = false
                                CurrentColor = Color(uiColor: .white)
                                canTouchDown = true
                            }
                    )
                    HStack{
                        VStack (spacing: 10){
                            
                            Text("Previous Scramble:")
                                .fontWeight(.bold)
                            
                            HStack{
                                drawPllRectangleTop(colorOfRectangle: .green)
                                
                                drawPllRectangleTop(colorOfRectangle: .green)
                                
                                drawPllRectangleTop(colorOfRectangle: .blue)
                                
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: .blue)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: .orange)
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: .blue)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: .orange)
                                
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: .blue)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: .green)
                            }
                            HStack{
                                
                                drawPllRectangleBottom(colorOfRectangle: .red)
                                
                                drawPllRectangleBottom(colorOfRectangle: .red)
                                
                                drawPllRectangleBottom(colorOfRectangle: .red)
                                
                            }
                        }
                        //Draws the Cube, with way too many rectangles
                        
                        Spacer()
                        
                        VStack (spacing: 10){
                            
                            Text("Upcoming Scramble:")
                                .fontWeight(.bold)
                            
                            HStack{
                                drawPllRectangleTop(colorOfRectangle: .orange)
                                
                                drawPllRectangleTop(colorOfRectangle: .green)
                                
                                drawPllRectangleTop(colorOfRectangle: .green)
                                
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: .blue)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: .red)
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: .orange)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: .red)
                                
                            }
                            HStack{
                                
                                drawPllRectangleLeft(colorOfRectangle: .blue)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawOllRectangle(colorOfRectangle: .yellow)
                                
                                drawPllRectangleRight(colorOfRectangle: .orange)
                            }
                            HStack{
                                
                                drawPllRectangleBottom(colorOfRectangle: .red)
                                
                                drawPllRectangleBottom(colorOfRectangle: .blue)
                                
                                drawPllRectangleBottom(colorOfRectangle: .green)
                                
                            }
                        }
                    }
                }
                .foregroundColor(.white)
                .padding()
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
