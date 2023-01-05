//
//  SetFont.swift
//  Crewl
//
//  Created by NomoteteS on 5.01.2023.
//

import Foundation
import SwiftUI

struct Fonts {
    var SpaceRegular = ("SpaceGrotesk-Regular")
    var SpaceLight = ("SpaceGrotesk-Light")
    var SpaceMedium = ("SpaceGrotesk-Medium")
    var SpaceSemiBold = ("SpaceGrotesk-SemiBold")
    var SpaceBold = ("SpaceGrotesk-Bold")
}

struct FontSize {
    var Little : CGFloat = 10.17
    var Regular : CGFloat = 12
    var Medium : CGFloat = 14
    var Middle : CGFloat = 16
    var Large : CGFloat = 18
    var Title : CGFloat = 24
    var LargeTitle : CGFloat = 40
}


// Help to find fonts
///struct fontSeeker {
///    init() {
///        for familyName in UIFont.familyNames {
///            print(familyName)
///
///            for fontName in UIFont.fontNames(forFamilyName: familyName){
///                print("--> \(fontName)")
///            }
///        }
///    }
///}
