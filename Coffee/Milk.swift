//
//  Milk.swift
//  Coffee
//
//  Created by Maksim Romanov on 23.03.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import Foundation

class Milk: CoffeeDecorator {
    var withMilk: Bool = false

    convenience init(_ coffee: Coffee, withMilk: Bool = false) {
        self.init(coffee)
        self.withMilk = withMilk
    }

    override func price() -> Int {
        switch self.withMilk {
        case true:
            return super.price() + 20
        case false:
            return super.price()
        }
    }
}
