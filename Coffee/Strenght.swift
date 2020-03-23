//
//  Strenght.swift
//  Coffee
//
//  Created by Maksim Romanov on 21.03.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import Foundation

enum CoffeeStrenght: Int {
    case standart = 0
    case strenght = 30
    case veryStrenght = 60
}

class Strenght: CoffeeDecorator {
    var coffeeStrenght: CoffeeStrenght = .standart

    convenience init(_ coffee: Coffee, coffeeStrenght: CoffeeStrenght = .standart) {
        self.init(coffee)
        self.coffeeStrenght = coffeeStrenght
    }

    override func price() -> Int {
        return super.price() + coffeeStrenght.rawValue
    }

}
