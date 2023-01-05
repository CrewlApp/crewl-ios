//
//  SplashView.swift
//  Crewl
//
//  Created by NomoteteS on 5.01.2023.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    
    var body: some View {
        if isActive == true {
            firstOnboardingView()
        } else {
            ZStack{
                Image("SplashScreen")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    isActive = true
                }
            }
        }
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
