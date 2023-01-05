//
//  firstOnboardingView.swift
//  Crewl
//
//  Created by NomoteteS on 5.01.2023.
//

import SwiftUI

struct firstOnboardingView: View {
    var body: some View {
        ZStack{
            Color(SetColor.backgroundColor.rawValue)
                .ignoresSafeArea()
            
            VStack {
                Spacer()

                Text("Etrafındaki etkinlikleri keşfet")
                    .frame(width: 185)
                    .font(.SpaceBold22)
                
                Spacer()
                
                Image("firstOnboarding")
                    .resizable()
                    .frame(width: 282, height: 347)
                
                Spacer()
                
                Text("İnsanlar için etkinlik oluştur veya düzenlenen etkinliklere katıl.")
                    .frame(width: 230,height: 60)
                    .font(.RoundedRegular16)
                
                Spacer()

                NavigationLink {
                    secondOnboardingView()
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

struct firstOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        firstOnboardingView()
    }
}
