//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        var points = 0
        var record = 0
        var chosenPlanet = ""
        
        let planetsJSON = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")!
        let rawPlanetsJSON = NSData(contentsOfURL: planetsJSON)
        
        var planetsDictionariesFromJSON: [[String: AnyObject]]!
        do {
            planetsDictionariesFromJSON = try! NSJSONSerialization.JSONObjectWithData(rawPlanetsJSON!, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
            
            for planet in planetsDictionariesFromJSON! {
                
                let name = planet["Name"] as! String
                let commonItems = planet["CommonItemsDetected"] as! Int
                let uncommonItems = planet["UncommonItemsDetected"] as! Int
                let rareItems = planet["RareItemsDetected"] as! Int
                let legendaryItems = planet["LegendaryItemsDetected"] as! Int
                
                points = (commonItems * 1) + (uncommonItems * 2) + (rareItems * 3) + (legendaryItems * 4)
                
                if points > record {
                    
                    record = points
                    chosenPlanet = name
                    
                }
            }

        }
        
        return chosenPlanet
        
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"