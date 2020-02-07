//
//  Gladiator.swift
//  Antic Fight-Last Version
//
//  Created by macmini-Armelle on 07/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Gladiator: Warrior {
    init(name: String) {
        super.init( fighterName: name, arm: BroadSword(), life: 80)
    }
}
