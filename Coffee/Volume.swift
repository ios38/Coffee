//
//  Volume.swift
//  Coffee
//
//  Created by Maksim Romanov on 23.03.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import Foundation

enum CoffeeVolume: Int {
    case standart = 0
    case medium = 30
    case big = 60
}

class Volume: CoffeeDecorator {
    var coffeeVolume: CoffeeVolume = .standart

    convenience init(_ coffee: Coffee, coffeeVolume: CoffeeVolume = .standart) {
        self.init(coffee)
        self.coffeeVolume = coffeeVolume
    }

    override func price() -> Int {
        return super.price() + coffeeVolume.rawValue
    }
}
