//
//  Whip.swift
//  Coffee
//
//  Created by Maksim Romanov on 23.03.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import Foundation

class Cream: CoffeeDecorator {
    var withCream: Bool = false

    convenience init(_ coffee: Coffee, withCream: Bool = false) {
        self.init(coffee)
        self.withCream = withCream
    }

    override func price() -> Int {
        switch self.withCream {
        case true:
            return super.price() + 40
        case false:
            return super.price()
        }
    }
}
