//
//  Character.swift
//  Antic Fight-Last Version
//
//  Created by macmini-Armelle on 07/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Character {
    var lifePoint: Int
    var name: String
    var weapon: Weapon
    
    init(lifePoint: Int, name: String, weapon: Weapon) {
        self.lifePoint = lifePoint
        self.name = name
        self.weapon = weapon
    }
    
    func actionOn(character: Character) {
        character.lifePoint -= self.weapon.damage
    }
    
    func printCharactertistic() {
        if lifePoint > 0 {
            print("\(name) - \(lifePoint)")
        } else {
            print("\(name) - MORT")
        }
    }
}
