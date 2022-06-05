//
//  LocalizableStrings.swift
//  piggybank
//
//  Created by caiomadeira on 05/06/22.
//

import Foundation

public protocol Localizable {
    var localizable: String { get }
}

public extension Localizable where Self: RawRepresentable, RawValue == String {
    var localizable: String {
        return NSLocalizedString(rawValue, bundle: PiggyBank.bundle, comment: "")
    }
}

// MARK: - MAIN ENUM
public enum LocalizableStrings: String, Localizable {
        
    case piggybankFontHelvetica = "Helvetica-Bold"
    case piggybankTitleNavigation = "Piggy Bank"
    case piggyBankButtonPrimary = "Piggy Bank All Balance View"
    case piggyBankButtonSecondary = "Piggy Bank Separate Money View"
    case piggyBankButtonTertiary = "Piggy Bank SafeBox Name, Icon"
    case piggyBankButtonQuartenary = "Piggy Bank SafeBox Lock Date"
    case piggyBankButtonFinish = "Piggy Bank SafeBox Finish"

    
    var localized: String {
        return NSLocalizedString(self.rawValue, bundle: PiggyBank.bundle, comment: "")
    }
}

