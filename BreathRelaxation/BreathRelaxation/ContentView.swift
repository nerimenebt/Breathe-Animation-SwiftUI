//
//  ContentView.swift
//  BreathRelaxation
//
//  Created by Nerimene on 9/5/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var breath: Bool = false
    
    var body: some View {
        ZStack {
            Image("relaxImg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            RadialGradient(gradient: Gradient(colors: [Color(red: 245/255, green: 158/255, blue: 31/255, opacity: 0.28), Color(red: 245/255, green: 158/255, blue: 31/255, opacity: 0.3)]), center: .center, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/)
                .scaleEffect(1.2)
            ZStack {
                ZStack {
                    ZStack {
                        RadialGradient(gradient: Gradient(colors: [Color(red: 141/255, green: 64/255, blue: 111/255), Color(red: 221/255, green: 82/255, blue: 85/255)]), center: .center, startRadius: 5, endRadius: 100)
                            .clipShape(Circle()).frame(width: 80, height: 80)
                            .offset(y: -41.0)
                    }
                    ZStack {
                        RadialGradient(gradient: Gradient(colors: [Color(red: 141/255, green: 64/255, blue: 111/255), Color(red: 221/255, green: 82/255, blue: 85/255)]), center: .center, startRadius: 5, endRadius: 90)
                            .clipShape(Circle()).frame(width: 80, height: 80)
                            .offset(y: 41.0)
                        Text(breath ? "Focus on \nthe Body \nSensations" : "")
                            .bold()
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                    }
                }.opacity(0.5)
                
                ZStack {
                    ZStack {
                        RadialGradient(gradient: Gradient(colors: [Color(red: 141/255, green: 64/255, blue: 111/255), Color(red: 221/255, green: 82/255, blue: 85/255)]), center: .center, startRadius: 5, endRadius: 100)
                            .clipShape(Circle()).frame(width: 80, height: 80)
                            .offset(y: -41.0)
                    }
                    ZStack {
                        RadialGradient(gradient: Gradient(colors: [Color(red: 141/255, green: 64/255, blue: 111/255), Color(red: 221/255, green: 82/255, blue: 85/255)]), center: .center, startRadius: 5, endRadius: 90)
                            .clipShape(Circle()).frame(width: 80, height: 80)
                            .offset(y: 41.0)
                    }
                }.opacity(0.5).rotationEffect(Angle(degrees: 60), anchor: .center)
                
                ZStack {
                    ZStack {
                        RadialGradient(gradient: Gradient(colors: [Color(red: 141/255, green: 64/255, blue: 111/255), Color(red: 221/255, green: 82/255, blue: 85/255)]), center: .center, startRadius: 5, endRadius: 100)
                            .clipShape(Circle()).frame(width: 80, height: 80)
                            .offset(y: -41.0)
                    }
                    ZStack {
                        RadialGradient(gradient: Gradient(colors: [Color(red: 141/255, green: 64/255, blue: 111/255), Color(red: 221/255, green: 82/255, blue: 85/255)]), center: .center, startRadius: 5, endRadius: 90)
                            .clipShape(Circle()).frame(width: 80, height: 80)
                            .offset(y: 41.0)
                    }
                }.opacity(0.5).rotationEffect(Angle(degrees: 60 * 2), anchor: .center)
            }
            .rotationEffect(Angle.degrees(breath ? 360 : 0))
            .scaleEffect(breath ? 2.0 : 0.2)
            .animation(Animation.easeOut(duration: 4).delay(1.0).repeatForever())
            .opacity(breath ? 1.0 : 0.5)
            .onAppear() {
                self.breath.toggle()
                playSound(sound: "island-vibes-dreamheaven", type: "mp3")
            }
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(red: 141/255, green: 64/255, blue: 111/255))
                .scaleEffect(breath ? 0.6 : 1.4)
                .opacity(breath ? 0 : 1)
                .blendMode(.hardLight)
                .animation(Animation.easeOut(duration: 4).delay(1.0).repeatForever())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
