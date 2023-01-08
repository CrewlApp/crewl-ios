//
//  ButtonStyle.swift
//  Crewl
//
//  Created by NomoteteS on 5.01.2023.
//

import SwiftUI

struct ButtonStyleOne: ButtonStyle {
    var buttonColor = ""
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label
                .zIndex(2)
                .offset(
                    x: configuration.isPressed ? 6 : 0,
                    y: configuration.isPressed ? 5 : 0
                )
            
            CustomButton(buttonColor: buttonColor, frameWidth: 266)
                .offset(
                    x: configuration.isPressed ? 6 : 0,
                    y: configuration.isPressed ? 5 : 0
                )
            
            CustomBlackBackground(frameWidth: 266)
        }
    }
}

struct NotificationOne: ButtonStyle {
    @State var buttonColor = ""
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label
                .zIndex(2)
                .offset(
                    x: configuration.isPressed ? 6 : 0,
                    y: configuration.isPressed ? 5 : 0
                )
            
            CustomButton(buttonColor: buttonColor, frameWidth: 113)
                .offset(
                    x: configuration.isPressed ? 6 : 0,
                    y: configuration.isPressed ? 5 : 0
                )
            
            CustomBlackBackground(frameWidth: 113)
        }
    }
    
    
}

struct NotificationTwo: ButtonStyle {
    var buttonColor : String
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label
                .zIndex(2)
                .offset(
                    x: configuration.isPressed ? 6 : 0,
                    y: configuration.isPressed ? 5 : 0
                )
            
            CustomButton(buttonColor: buttonColor, frameWidth: 87)
                .offset(
                    x: configuration.isPressed ? 6 : 0,
                    y: configuration.isPressed ? 5 : 0
                )
            
            CustomBlackBackground(frameWidth: 87)
        }
    }
}

// MARK: - Button Test Place
struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(SetColor.backgroundColor.rawValue)
                .ignoresSafeArea()
            Button(
                action: {
                    
                }, label: {
                    Text("Daha Sonra")
                        .font(.SpaceBold13)
                    
                })
            .buttonStyle(NotificationTwo(buttonColor: SetColor.yellow.rawValue))
        }
    }
}

// MARK: - Set Structs

// Set CustomBlackBackground Size
private struct CustomBlackBackground: View {
    var frameWidth : CGFloat
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .zIndex(0)
            .frame(width: frameWidth, height: 50)
            .offset(x: 6, y: 5)
    }
}

// Set CustomButton Size and Color
private struct CustomButton: View {
    /// Add New Color
    var buttonColor = ""
    var frameWidth : CGFloat
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(lineWidth: 2)
            .frame(width: frameWidth, height: 50)
            .zIndex(1)
            .background(content: {
                Color(buttonColor)
                    .cornerRadius(10)
            })
    }
}
