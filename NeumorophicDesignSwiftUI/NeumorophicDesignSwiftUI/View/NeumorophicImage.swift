//
//  NeumorophicImage.swift
//  NeumorophicDesignSwiftUI
//
//  Created by Mohammed Rishan on 07/06/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import SwiftUI

struct NeumorophicImage: View {
    
    private var name: String
    
    private var size: CGSize
    
    init(name: String,size: CGSize = CGSize(width: 60, height: 60)) {
        self.name = name
        self.size = size
    }
    
    var body: some View {
      
        Image(self.name)
                .resizable()
                .padding()
                .shadow(color: Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), radius: 8, x: 9, y: 9)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -9, y: -9)
    }
}

struct NeumorophicImage_Previews: PreviewProvider {
    static var previews: some View {
        NeumorophicImage(name: "trance")
    }
}
