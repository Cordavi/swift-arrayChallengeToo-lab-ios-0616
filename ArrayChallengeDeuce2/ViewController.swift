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
        print(deliLineDescription())
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
    
    func nowServing() -> String {
        var nextCustomer = ""
        
        if deliLine.isEmpty {
            nextCustomer = "There is no-one to be served."
        } else {
            nextCustomer = "Now serving \(deliLine[0])!"
            deliLine.removeAtIndex(0)
        }
        return nextCustomer
    }
    
    func deliLineDescription() -> String {
        if deliLine.isEmpty {
            return "The line is currently empty."
        } else {
            var deliLineList = "The line is: "
            for person in deliLine {
                deliLineList.appendContentsOf("\n \(person)")
            }
            return deliLineList
        }
    }
}
