//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Shiqi Zhang on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State var num: Double = 50
    @State var check_toggle = false
    @State var exact_mode_toggle = false
    
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)
                
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(.trailing, 20)
            }
            .padding(.top, 20)
            
            Text("Move the slider to:").padding(.top, 200).font(.system(size: 30))
            VStack() {
                Text("\(num, specifier: "%.0f")").font(.system(size: 30))
                Slider(value: $num, in: 0...100)
                Button("check") {
                    check_toggle.toggle()
                }.padding()
            }
            .padding(.leading, 50)
            .padding(.trailing, 50)
            
            Spacer()
            
            Text("Exact Mode?")
            Toggle("", isOn: $exact_mode_toggle).padding(.trailing, 170)
        }
        .padding(.top, 20)
    }
}
