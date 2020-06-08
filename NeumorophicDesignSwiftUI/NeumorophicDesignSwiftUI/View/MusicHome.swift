//
//  MusicHome.swift
//  NeumorophicDesignSwiftUI
//
//  Created by Mohammed Rishan on 07/06/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import SwiftUI

struct MusicHome: View {
    
    var body: some View {
        
        NavigationView{
            
            VStack {
                //Mark:- NavigationBar
                HStack{
                    
                    NeumorphicImageButton(systemName: "person", size: CGSize(width: 25, height: 25)) {
                    }.foregroundColor(Color.gray)
                    
                    Spacer()
                    Text("Spotify")
                        .foregroundColor(Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)))
                        .fontWeight(.bold)
                        .font(.title)
                        .padding(.top, 20)
                    Spacer()
                    
                    NeumorphicImageButton(systemName: "line.horizontal.3", size: CGSize(width: 25, height: 25)) {
                    }.foregroundColor(Color.gray)
                    
                }.padding(.leading, 50)
                    .padding(.trailing, 50)
                    .padding(.bottom, 20)
                
                
                //Mark:- Horizonal Rectangle Corosal
                
                ZStack {
                    CardView(name: "trance")
                        .frame(width: UIScreen.main.bounds.width - 50, height: 200)
                        .clipShape(Rectangle())
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .cornerRadius(30)
                }.clipShape(Rectangle().inset(by: 2))
                    .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 10, x: 9, y: 9)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -9, y: -9)
                    .padding(.bottom, 10)
                
                
                //Mark:- Horizonal Circle Corosal
                HStack {
                    ZStack {
                        NeumorophicImage(name: "beber")
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                    }.clipShape(Circle().inset(by: 20))
                        .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 10, x: 9, y: 9)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -9, y: -9)
                        .padding(.top, 20)
                    
                    ZStack {
                        NeumorophicImage(name: "beber")
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                    }.clipShape(Circle().inset(by: 20))
                        .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 10, x: 9, y: 9)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -9, y: -9)
                        .padding(.top, 20)
                    
                    ZStack {
                        NeumorophicImage(name: "beber")
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                    }.clipShape(Circle().inset(by: 20))
                        .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 10, x: 9, y: 9)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -9, y: -9)
                        .padding(.top, 20)
                }.padding(.bottom, 5)
                
                //Mark:- CardView
                VStack {
                NavigationLink(destination: MusicPlayerView()) {
                    CardView(name: "trance")
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .cornerRadius(25)
                }
                
                NavigationLink(destination: MusicPlayerView()) {
                    CardView(name: "trance")
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .cornerRadius(25)
                        .padding(.top, 20)
                }
                }
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MusicHome_Previews: PreviewProvider {
    static var previews: some View {
        MusicHome()
    }
}
