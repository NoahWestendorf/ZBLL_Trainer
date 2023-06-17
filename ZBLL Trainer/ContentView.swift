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
    @State var currentColor = Color(uiColor: .white)
    @State private var canTouchDown = true
    
    let timer = Timer.publish(every: 0.01, on: .main, in: .common) .autoconnect()
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                    .onTapGesture {
                        if (TimerIsRunning == false){
                            TimerCount = 0
                        }
                        TimerIsRunning.toggle()
                    }
                
                VStack{
                    Text("R2 F' B' L2 F' B D' L2 F2 U L2 U' R2 U L2 B2") //future feature:tap on scramble and get description of the previous solves with it
                        .fontWeight(.bold)
                        .font(.title)
                        .padding(.vertical, 40.0)
                    
                    Spacer()
                    
                    
                    Text(String(format: "%.2f", TimerCount))
                        .onReceive(timer) { _ in
                            if (TimerIsRunning){
                                
                                TimerCount += 0.01
                                
                            } else {
                                
                                TimerIsRunning = false
                            }
                        }
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(currentColor)
                    
                    
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
