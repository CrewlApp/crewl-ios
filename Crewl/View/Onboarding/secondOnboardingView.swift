//
//  secondOnboardingView.swift
//  Crewl
//
//  Created by NomoteteS on 5.01.2023.
//

import SwiftUI

struct secondOnboardingView: View {
    var body: some View {
        ZStack{
            Color(SetColor.backgroundColor.rawValue)
                .ignoresSafeArea()
            
            VStack {
                Spacer()

                Text("Yeni insanlarla tanış ve rekabet et")
                    .frame(width: 218)
                    .font(.SpaceBold22)
                
                Spacer()
                
                Image("secondOnboarding")
                    .resizable()
                    .frame(width: 282, height: 347)
                
                Spacer()
                
                Text("Şehrindeki yeni insanları bul, etkinliklerde ekibini oluştur ve ödül kazan.")
                    .frame(width: 290,height: 60)
                    .font(.RoundedRegular16)
                
                Spacer()

                NavigationLink {
                    thirdOnboardingView()
                } label: {
                    Text("Devam Et")
                        .font(.SpaceBold13)
                    
                }.buttonStyle(ButtonStyleOne(buttonColor: SetColor.yellow.rawValue))

                Spacer()

            }
            .multilineTextAlignment(.center)
        }
    }
}

struct secondOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        secondOnboardingView()
    }
}
