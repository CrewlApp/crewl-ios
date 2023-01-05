//
//  ButtonStyle.swift
//  Crewl
//
//  Created by NomoteteS on 5.01.2023.
//

import SwiftUI

struct ButtonStyleOne: ButtonStyle {
    
    /// Add New Color
    @State var buttonColor = ""
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label
                .zIndex(2)
                .offset(
                    x: configuration.isPressed ? 6 : 0,
                    y: configuration.isPressed ? 5 : 0
                )
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
                .frame(width: 266, height: 50)
                .zIndex(1)
                .background(content: {
                    Color(buttonColor)
                        .cornerRadius(10)
                })
                .offset(
                    x: configuration.isPressed ? 6 : 0,
                    y: configuration.isPressed ? 5 : 0
                )
                
            BlackBackground()
        }
    }
    
    // MARK: - Button Test Place
    struct ButtonStyle_Previews: PreviewProvider {
        static var previews: some View {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                Button(
                    action: {
                        
                    }, label: {
                        Text("Giriş yap")
                            .bold()
                        
                    })
                .buttonStyle(ButtonStyleOne(buttonColor: SetColor.yellow.rawValue))
            }
        }
    }
}

/// W: 266 , H: 50 Size Black Background
struct BlackBackground: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .zIndex(0)
            .frame(width: 266, height: 50)
            .offset(x: 6, y: 5)
    }
}
