//
//  thirdOnboarding.swift
//  Crewl
//
//  Created by NomoteteS on 5.01.2023.
//

import SwiftUI

struct thirdOnboardingView: View {
    var body: some View {
        ZStack{
            Color(SetColor.backgroundColor.rawValue)
                .ignoresSafeArea()
            
            VStack {
                Spacer()

                Text("Özel indirimler kazan ve farklı tatları dene")
                    .frame(width: 219)
                    .font(.SpaceBold22)
                
                Spacer()
                
                Image("thirdOnboarding")
                    .resizable()
                    .frame(width: 282, height: 347)
                
                Spacer()
                
                Text("Gittiğin barların özel içeceklerini dene ve Crewl üyeliğine özel indirimlerin tadını çıkar.")
                    .frame(width: 310,height: 60)
                    .font(.RoundedRegular16)
                
                Spacer()

                NavigationLink {
                    fourthOnboardingView()
                        .navigationBarBackButtonHidden(true)
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

struct thirdOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        thirdOnboardingView()
    }
}
