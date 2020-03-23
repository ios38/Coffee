//
//  Sugar.swift
//  Coffee
//
//  Created by Maksim Romanov on 23.03.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import Foundation

class Sugar: CoffeeDecorator {
    var withSugar: Bool = false

    convenience init(_ coffee: Coffee, withSugar: Bool = false) {
        self.init(coffee)
        self.withSugar = withSugar
    }

    override func price() -> Int {
        switch self.withSugar {
        case true:
            return super.price() + 10
        case false:
            return super.price()
        }
    }
}
