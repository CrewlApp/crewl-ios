//
//  LocationServiceView.swift
//  Crewl
//
//  Created by NomoteteS on 8.01.2023.
//

import SwiftUI

struct LocationServiceView: View {
    @ObservedObject var locationManager = LocationManager.shared
    var body: some View {
        if locationManager.userLocation == nil{
            ZStack {
                //MARK: - Image & Text
                Color(SetColor.backgroundColor.rawValue)
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    Image(SetImage.NotificationsImage.locationImage.rawValue)
                        .resizable()
                        .frame(width: 194, height: 221)
                    
                    // Text
                    VStack(spacing: 10) {
                        // Title
                        Text("Konum servislerini aç")
                            .font(.SpaceBold20)
                        
                        // Description
                        Text("Etrafındaki etkinlikleri sana göstermemiz için lokasyon izni vermen gerekiyor. Gerekmiyor mu?")
                            .frame(width: 310)
                            .font(.RoundedRegular14)
                            .foregroundColor(Color.gray)
                    }
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    
                    // Buttons
                    HStack(spacing: 15){
                        // Skip Location Request
                        NavigationLink {
                              NotificationServiceView()
                        } label: {
                            Text("Daha sonra")
                                .font(.SpaceBold13)
                        }.buttonStyle(NotificationOne(buttonColor: SetColor.white.rawValue))
                        
                        // Accept Location Request
                        Button {
                            LocationManager.shared.requestLocation()
                        } label: {
                            Text("İzin ver")
                                .font(.SpaceBold13)
                        }.buttonStyle(NotificationTwo(buttonColor: SetColor.yellow.rawValue))
                            .onAppear {
                                 
                            }
                    }
                    .padding(.vertical)
                    
                }
            }
        }
        else if locationManager.userLocation != nil {
            NotificationServiceView()
        }
    }
}

struct LocationServiceView_Previews: PreviewProvider {
    static var previews: some View {
        LocationServiceView()
    }
}
