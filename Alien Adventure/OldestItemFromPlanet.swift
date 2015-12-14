//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var chosenAge = 0
        var chosenItem: UDItem? = nil
        
        for item in inventory {
        
            if let planetOfOrigin = item.historicalData["PlanetOfOrigin"] as? String {
            
                if planetOfOrigin == planet {
                
                    if let carbonAge = item.historicalData["CarbonAge"] as? Int {
                        
                        print (carbonAge)
                        
                        if carbonAge > chosenAge {
                            
                            chosenItem = item
                            chosenAge = carbonAge
                        
                        }
                    
                    }
                
                }
            
            }
        
        }
        
        return chosenItem
        
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"