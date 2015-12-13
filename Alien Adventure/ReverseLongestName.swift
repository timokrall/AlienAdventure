//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {

        var chosenName = ""
        var chosenCount = 0
        var examinedName = ""
        var examinedCount = 0
        
        for UDItem in inventory {
        
            examinedName = UDItem.name
            examinedCount = examinedName.characters.count
            
            if examinedCount > chosenCount {
            
                chosenName = examinedName
                chosenCount = chosenName.characters.count
            
                print(String(chosenName.characters.reverse()))
                
            }
            
            print(String(chosenName.characters.reverse()))
            
        }

        return String(chosenName.characters.reverse())
    }
    
    
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"