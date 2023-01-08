//
//  FontManager.swift
//  Crewl
//
//  Created by NomoteteS on 5.01.2023.
//

import Foundation
import SwiftUI

// Calling font and settings
private let getFont = Fonts()
private let getSize = FontSize()

extension Font {
    
    //MARK: - Space Grotest Fonts
    static let SpaceBold22 : Font = .custom(getFont.SpaceBold, size: getSize.Title)
    static let SpaceBold20 : Font = .custom(getFont.SpaceBold, size: getSize.AltTitle)
    static let SpaceBold13 : Font = .custom(getFont.SpaceBold, size: getSize.AltMedium)
    
    //MARK: - SF Pro Rounded Fonts
    static let RoundedRegular16 : Font = .system(size: getSize.Middle, weight: .regular, design: .rounded)
    static let RoundedRegular14 : Font = .system(size: getSize.Medium, weight: .regular, design: .rounded)
    static let RoundedRegular13 : Font = .system(size: getSize.AltMedium, weight: .regular, design: .rounded)
}
