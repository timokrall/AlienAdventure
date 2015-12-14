//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        let itemPlist = NSBundle.mainBundle().URLForResource("ItemList", withExtension: "plist")!
        let itemArray = NSArray(contentsOfURL: itemPlist)
        
        var bannedArray = [Int]()
        
        for item in itemArray! {
        
            let itemName = (item.objectForKey("Name") as? String)?.lowercaseString
            let historicalData = item.objectForKey("HistoricalData") as? [String:AnyObject]
            let carbonAge = historicalData!["CarbonAge"] as? Int
            let itemId = item.objectForKey("ItemID") as? Int
            if itemName!.containsString("laser") && carbonAge < 30 {
                bannedArray.append(itemId!)
            }

        }
        
        return bannedArray
        
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"