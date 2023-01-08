//
//  NotificationServiceView.swift
//  Crewl
//
//  Created by NomoteteS on 8.01.2023.
//

import SwiftUI

struct NotificationServiceView: View {
    var body: some View {
        ZStack {
            
            //MARK: - Image & Text
            Color(SetColor.backgroundColor.rawValue)
                .ignoresSafeArea()
            VStack(spacing: 30) {
                Image(SetImage.NotificationsImage.notificationImage.rawValue)
                    .resizable()
                    .frame(width: 194, height: 221)
                
                // Text
                VStack(spacing: 10) {
                    // Title 
                    Text("Bildirimlerini aç")
                        .font(.SpaceBold20)
                    
                    // Description
                    Text("Etrafındaki etkinlikleri sana göstermemiz için lokasyon izni vermen gerekiyor. Gerekmiyor mu?")
                        .frame(width: 300)
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom)
                
                // Buttons
                HStack(spacing: 15){
                    // Skip Notification Request
                    NavigationLink {
                        HomeView()
                            .navigationBarHidden(true)
                    } label: {
                        Text("Daha sonra")
                            .font(.SpaceBold13)
                    }.buttonStyle(NotificationOne(buttonColor: SetColor.white.rawValue))
                    
                    // Accept Notification Request
                    Button {
                        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
                        UNUserNotificationCenter.current().requestAuthorization(
                          options: authOptions,
                          completionHandler: {_, _ in })
                    } label: {
                        Text("İzin ver")
                            .font(.SpaceBold13)
                    }.buttonStyle(NotificationTwo(buttonColor: SetColor.yellow.rawValue))
                }
                .padding(.vertical)
            }
        }
    }
}

struct NotificationServiceView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationServiceView()
    }
}

