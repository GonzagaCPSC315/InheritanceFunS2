//
//  Lawyer.swift
//  InheritanceFunS2
//
//  Created by Gina Sprint on 9/21/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

class Lawyer: Employee {
    var stockOptions: Int
    override var description: String {
        return "\(super.description). I'm a lawyer and I have stock options: \(stockOptions)"
    }
    
    init(name: String, stockOptions: Int) {
        self.stockOptions = stockOptions
        super.init(name: name)
        self.salary += 30_000
    }
    
    override func raise() {
        self.stockOptions += 10
    }
}
