//
//  Warrior.swift
//  Antic Fight-Last Version
//
//  Created by macmini-Armelle on 07/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Warrior{
    var fighterName : String
    var armName : [String] = ["Ax", "Sword","BroadSword"]
    var arm: Weapon
    var damage : [Int] = [15,18,12]
    var life : Int
    
    
    init ( fighterName : String, arm : Weapon, life : Int)
    {
        self.fighterName = fighterName
        self.arm = arm
        self.life = life
        }
   func collectNameFighterTeam1()->[String]
   {  var nameFighter1 = ["","",""]
       print("\nFirst Player give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
       for index in 0...2{
       
       if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
           nameFighter1[index] = name}
       }
       
       return nameFighter1
   
       }
    
    func collectNameFighterTeam2()->[String]
      {  var nameFighter2 = ["","",""]
          print("\nSecond Player give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
          for index in 0...2{
          
          if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
              nameFighter2[index] = name}
          }
          
          return nameFighter2
      
          }
          
       
       
    func receiveDamage(damage : Int, index: Int){
            self.life[index] = self.life[index] - damage
      //If life turns into negative value, life will be equal to zero
    if self.life[index] < 0
            {
                self.life[index] = 0
            }
        }
        
        
        
    func fightAgainst(fighter : Warrior)
        {
            fighter.receiveDamage(damage: self.arm.damage, index : 1)
        }
func increasePowerArm ()
        {self.arm.damage += 8}
    
        
    func description(range : Int, team : Int)-> String {
        
        var description : [String] = ["","",""]
        
        description[range] = "Arm : \(self.armName[range])" + "   Life : \(self.life[range])" + "   Damages : \(self.arm.damage)\n"
       return "\(description[range])"
        }
  
   
    func cureOneself(index: Int){
        self.life[index] +=  10 }
    
    

}
