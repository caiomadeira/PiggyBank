//
//  PiggyBankViewCodeProtocol.swift
//  piggybank
//
//  Created by caiomadeira on 04/06/22.
//

import Foundation

public protocol PiggyBankViewCode {
    
    func setupHierarchy()
    func setupConstraints()
    func setupAccessibility()
    func setupCustomization()
}

public extension PiggyBankViewCode {
    func setupView() {
        setupHierarchy()
        setupConstraints()
        setupAccessibility()
        setupCustomization()
    }
}
