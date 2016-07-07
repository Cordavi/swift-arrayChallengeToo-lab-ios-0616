//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addNameToDeliLine(name:String) -> String {
        switch name {
        case "Billy Crystal":
            deliLine.insert(name, atIndex: 0)
            return "Welcome Billy! You can sit wherever you like."
        case "Meg Ryan":
            deliLine.insert(name, atIndex: 0)
            return "Welcome Meg! You can sit wherever you like."
        default:
            if deliLine.isEmpty {
                deliLine.append(name)
                return "Welcome \(name), you're first in line!"
            } else {
                deliLine.append(name)
                let placeIndex = deliLine.indexOf(name)
                return "Welcome \(name), you're number \(placeIndex! + 1) in line."
            }
        }
    }
}
