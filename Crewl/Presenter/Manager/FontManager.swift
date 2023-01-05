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
    static let SpaceBold22 : Font = .custom(getFont.SpaceBold, size: 22)
    static let RoundedRegular16 : Font = .system(size: 16, weight: .regular, design: .rounded)
    static let SpaceBold13 : Font = .custom(getFont.SpaceBold, size: 13)
}
