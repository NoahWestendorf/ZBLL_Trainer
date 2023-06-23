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
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
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
                    
                    
                    Spacer()
                    
                    HStack{
                        VStack{
                            Text("Previous scramble:")
                                .fontWeight(.bold)
                            Image("pll-case-example")
                        }
                        
                        Spacer()
                        
                        VStack{
                            Text("Next scramble:")
                                .fontWeight(.bold)
                            Image("pll-example-2")
                        }
                    }
                }
                .foregroundColor(.white)
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
