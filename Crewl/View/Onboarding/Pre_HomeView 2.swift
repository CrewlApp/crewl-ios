//
//  lastOnboardingView.swift
//  Crewl
//
//  Created by NomoteteS on 5.01.2023.
//

import SwiftUI

struct Pre_HomeView: View {
    var body: some View {
        ZStack{
            Color(SetColor.backgroundColor.rawValue)
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.green)
                    .frame(width: 282, height: 115)
                
                Spacer()
                
                
                // SignUp
                NavigationLink {
                    fourthOnboardingView()
                } label: {
                    Text("Kayıt Ol")
                        .font(.SpaceBold13)
                    
                }.buttonStyle(ButtonStyleOne(buttonColor: SetColor.yellow.rawValue))
                    .padding(.bottom)
                
                
                // SignIn
                NavigationLink {
                    fourthOnboardingView()
                } label: {
                    Text("Giriş Yap")
                        .font(.SpaceBold13)
                    
                }.buttonStyle(ButtonStyleOne(buttonColor: SetColor.white.rawValue))

                Spacer()

            }
            .multilineTextAlignment(.center)
        }
    }
}

struct Pre_HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Pre_HomeView()
    }
}
