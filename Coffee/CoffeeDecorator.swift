//
//  CoffeeDecorator.swift
//  Coffee
//
//  Created by Maksim Romanov on 21.03.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import Foundation

class CoffeeDecorator: Coffee {

    var base: Coffee

    init(_ base: Coffee) {
        self.base = base
    }

    func price() -> Int {
        return base.price()
    }
}
