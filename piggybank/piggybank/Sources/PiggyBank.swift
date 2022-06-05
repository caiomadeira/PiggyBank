//
//  PiggyBank.swift
//  piggybank
//
//  Created by caiomadeira on 05/06/22.
//

import UIKit

final public class PiggyBank {

    private init() {
        
    }
    // get the bundle
    public static var bundle: Bundle {
        return Bundle(for: PiggyBank.self)
    }
}

