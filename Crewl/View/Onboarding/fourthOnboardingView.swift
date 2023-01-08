//
//  fourthOnboardingView.swift
//  Crewl
//
//  Created by NomoteteS on 5.01.2023.
//

import SwiftUI

struct fourthOnboardingView: View {
    var body: some View {
        ZStack{
            Color(SetColor.backgroundColor.rawValue)
                .ignoresSafeArea()
            
            VStack {
                Spacer()

                Text("Unutulmayacak bir gece deneyimle")
                    .frame(width: 205)
                    .font(.SpaceBold22)
                
                Spacer()
                
                Image("fourthOnboarding")
                    .resizable()
                    .frame(width: 282, height: 347)
                
                Spacer()
                
                Text("Şimdi katıl ve hikayenin bir parçası ol. Seni aramızda görmek için sabırsızlanıyoruz.")
                    .frame(width: 300,height: 60)
                    .font(.RoundedRegular16)
                
                Spacer()

                NavigationLink {
                    Pre_HomeView()
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

struct fourthOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        fourthOnboardingView()
    }
}
