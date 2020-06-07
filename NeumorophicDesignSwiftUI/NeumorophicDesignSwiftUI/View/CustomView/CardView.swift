//
//  CardView.swift
//  NeumorophicDesignSwiftUI
//
//  Created by Mohammed Rishan on 07/06/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        HStack {
            ZStack{
                NeumorophicImage(name: "trance")
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
            }.clipShape(Circle().inset(by: 15))
                .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 10, x: 9, y: 9)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -9, y: -9)
            
            
            VStack {
                Text("Lose it")
                    .font(.custom("Arial", size: 20))
                    .foregroundColor(Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)))
                
                Text("Flume ft Vic memma")
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .padding(.top, 10)
            }
            
            NeumorphicImageButton(systemName: "pause.fill", size: CGSize(width: 25, height: 25)) {
            }.foregroundColor(Color.gray)
            .padding()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
