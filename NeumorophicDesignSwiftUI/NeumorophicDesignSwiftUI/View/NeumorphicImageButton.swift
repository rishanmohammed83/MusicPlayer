//
//  NeumorphicImageButton.swift
//  NeumorophicDesignSwiftUI
//
//  Created by Mohammed Rishan on 11/05/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import SwiftUI

struct NeumorphicImageButton: View {
    
    @State private var isPressed: Bool = false
    
    private var systemName: String
    private var onType: () -> Void
    
    private var size: CGSize
    
    init(systemName: String,size: CGSize = CGSize(width: 60, height: 60), onType: @escaping () -> Void) {
        self.systemName = systemName
        self.onType = onType
        self.size = size
    }
    
    var grey: Color { return Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) }
    
    var white: Color { return Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) }
    
    var body: some View {
        HStack {
            Button(action: {
                
                self.isPressed = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                    self.isPressed = false
                    self.onType()
                }}) {
                Image(systemName: self.systemName)
                    .resizable()
                    .frame(width: self.size.width, height: self.size.height)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                
            }.clipShape(Circle())
                .shadow(color: self.isPressed ? white : grey, radius: self.isPressed ? 4 : 8, x: 8, y: 8)
                .shadow(color: self.isPressed ? grey : white, radius: self.isPressed ? 4 : 8, x: -8, y: -8)
                .scaleEffect(self.isPressed ? 0.95 : 1.0)
                .animation(.spring())
        }
    }
}

struct NeumorphicImageButton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicImageButton(systemName: "heart.fill") {}
    }
}
