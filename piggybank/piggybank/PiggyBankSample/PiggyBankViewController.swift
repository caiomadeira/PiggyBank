//
//  ViewController.swift
//  piggybank
//
//  Created by caiomadeira on 04/06/22.
//

import UIKit

class PiggyBankViewController: UIViewController {
    
    var customView = PiggyBankView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        view = customView
    }

}
