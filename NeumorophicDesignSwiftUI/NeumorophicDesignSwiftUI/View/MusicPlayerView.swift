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
                
                NeumorphicImageButton(systemName: "arrow.left", size: CGSize(width: 25, height: 23)) {
                }.foregroundColor(Color.gray)
                
                Spacer()
                Text("PLAYING")
                    .foregroundColor(Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)))
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
                
                NeumorphicImageButton(systemName: "heart.fill", size: CGSize(width: 25, height: 23)) {
                }.foregroundColor(Color.red)
                
            }.padding(.leading, 20)
                .padding(.trailing, 20)
            
            
            ZStack {
                NeumorophicImage(name: "trance")
                .frame(width: 270, height: 270)
                .clipShape(Circle())
                  
            }.clipShape(Circle().inset(by: 15))
            .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 10, x: 9, y: 9)
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -9, y: -9)
            
            
//            Spacer()
            
            VStack {
                VStack {
                Text("Lose it")
                    .font(.custom("Arial", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)))
                    .padding(8)
                Text("Flume ft Vic memma")
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                }.padding(.top, 20)
                
                HStack {
                    Text("2.05")
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .padding(.leading, 25)
                        .font(.headline)
                Spacer()
                    Text("4.56")
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .padding(.trailing, 25)
                        .font(.headline)
                }.padding(.top, 20)
            
                Slider(value: self.$sliderValue, in: 0...1, step: 0.1)
                    .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 10, x: 6, y: 6)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -6, y: -6)
                    .accentColor(.green)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
            }.padding(.top, 30)
            
            Spacer()
            
            HStack {
                
                NeumorphicImageButton(systemName: "backward.fill", size: CGSize(width: 30, height: 30)) {
                }.foregroundColor(Color.gray)
                    
                
                Spacer()
                
                NeumorphicImageButton(systemName: "pause.fill", size: CGSize(width: 45, height: 45)) {
                }.foregroundColor(Color.gray)
                
                Spacer()
                
                NeumorphicImageButton(systemName: "forward.fill", size: CGSize(width: 30, height: 30)) {
                }.foregroundColor(Color.gray)
                
            }.padding(60)
            .padding(.bottom, 40)
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
