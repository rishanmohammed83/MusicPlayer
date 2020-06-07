//
//  MusicPlayerView.swift
//  NeumorophicDesignSwiftUI
//
//  Created by Mohammed Rishan on 11/05/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import SwiftUI

struct MusicPlayerView: View {
    
    @State private var sliderValue: Double = 0.5
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack{
                
                NeumorphicImageButton(systemName: "arrow.left", size: CGSize(width: 20, height: 20)) {
                }.foregroundColor(Color.gray)
                
                Spacer()
                Text("PLAYING")
                    .foregroundColor(Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)))
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
                
                NeumorphicImageButton(systemName: "line.horizontal.3", size: CGSize(width: 22, height: 22)) {
                }.foregroundColor(Color.gray)
                
            }.padding(25)
            
            
            ZStack {
                Image("trance")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .padding()
                    .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 8, x: 9, y: 9)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -9, y: -9)
            }.clipShape(Circle().inset(by: 6))
                .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 10, x: 9, y: 9)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -9, y: -9)
            
            
            Spacer()
            
            VStack {
                VStack {
                Text("Lose it")
                    .font(.custom("Arial", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)))
                    .padding(8)
                Text("Flume ft Vic memma")
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                }.padding()
                
                HStack {
                    Text("2.05")
                        .foregroundColor(Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)))
                        .padding(.leading, 25)
                Spacer()
                    Text("4.05")
                        .foregroundColor(Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)))
                        .padding(.trailing, 25)
                }
            
                Slider(value: self.$sliderValue, in: 0...1, step: 0.1)
                    .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 10, x: 6, y: 6)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -6, y: -6)
                    .accentColor(.green)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
            }
            
            Spacer()
            
            HStack {
                
                NeumorphicImageButton(systemName: "backward.fill", size: CGSize(width: 30, height: 30)) {
                }.foregroundColor(Color.gray)
                
                Spacer()
                
                NeumorphicImageButton(systemName: "stop.fill", size: CGSize(width: 30, height: 30)) {
                }.foregroundColor(Color.gray)
                
                Spacer()
                
                NeumorphicImageButton(systemName: "forward.fill", size: CGSize(width: 30, height: 30)) {
                }.foregroundColor(Color.gray)
                
            }.padding(60)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
            .edgesIgnoringSafeArea(.all)
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}
