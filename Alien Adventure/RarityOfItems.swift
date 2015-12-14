//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var rarityDictionary = [UDItemRarity: Int]()
        rarityDictionary = [.Common: 0, .Uncommon: 0, .Rare: 0, .Legendary: 0]
        
        for item in inventory {
        
            if item.rarity == .Common {
            
                rarityDictionary[.Common] = rarityDictionary[.Common]! + 1
            
            } else if item.rarity == .Uncommon {
                
                rarityDictionary[.Uncommon] = rarityDictionary[.Uncommon]! + 1
                
            } else if item.rarity == .Rare {
                
                rarityDictionary[.Rare] = rarityDictionary[.Rare]! + 1
                
            } else if item.rarity == .Legendary {
                
                rarityDictionary[.Legendary] = rarityDictionary[.Legendary]! + 1
                
            }
        
        }
        
        return rarityDictionary
        // return [UDItemRarity:Int]()
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"