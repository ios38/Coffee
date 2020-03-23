//
//  ViewController.swift
//  Coffee
//
//  Created by Maksim Romanov on 21.03.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var strenghtControl: UISegmentedControl!
    @IBOutlet weak var volumeControl: UISegmentedControl!
    @IBOutlet weak var sugarSwitch: UISwitch!
    @IBOutlet weak var milkSwitch: UISwitch!
    @IBOutlet weak var creamSwitch: UISwitch!
    @IBOutlet weak var priceLabel: UILabel!
    
    var userCoffee = UserCoffee()

    var coffeeStrenght: CoffeeStrenght {
        switch self.strenghtControl.selectedSegmentIndex {
        case 0:
            return .standart
        case 1:
            return .strenght
        case 2:
            return .veryStrenght
        default:
            return .standart
        }
    }

    var coffeeVolume: CoffeeVolume {
        switch self.volumeControl.selectedSegmentIndex {
        case 0:
            return .standart
        case 1:
            return .medium
        case 2:
            return .big
        default:
            return .standart
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark
        priceLabel.text = String(getPrice(coffee: userCoffee))
    }
    
    func getPrice(coffee: Coffee) -> Int {
        let strenght = Strenght(userCoffee, coffeeStrenght: self.coffeeStrenght)
        let volume = Volume(strenght, coffeeVolume: self.coffeeVolume)
        let sugar = Sugar(volume, withSugar: self.sugarSwitch.isOn)
        let milk = Milk(sugar, withMilk: self.milkSwitch.isOn)
        let cream = Cream(milk, withCream: self.creamSwitch.isOn)
        return cream.price()
    }
    
    @IBAction func strenghtSelected(_ sender: UISegmentedControl) {
        priceLabel.text = String(getPrice(coffee: userCoffee))
    }
    
    @IBAction func volumeSelected(_ sender: UISegmentedControl) {
        priceLabel.text = String(getPrice(coffee: userCoffee))
    }
    
    @IBAction func sugarSwitched(_ sender: UISwitch) {
        priceLabel.text = String(getPrice(coffee: userCoffee))
    }
    
    @IBAction func milkSwitched(_ sender: UISwitch) {
        creamSwitch.setOn(false, animated: true)
        priceLabel.text = String(getPrice(coffee: userCoffee))
    }
    
    @IBAction func creamSwitched(_ sender: Any) {
        milkSwitch.setOn(false, animated: true)
        priceLabel.text = String(getPrice(coffee: userCoffee))
    }
}

