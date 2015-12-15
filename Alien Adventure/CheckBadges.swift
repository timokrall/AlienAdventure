//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        var badgeArray = [String]()
        var okay = true
        
        for badge in badges {
        
            badgeArray.append(badge.requestType.rawValue)
        
        }
        
        for request in requestTypes {
        
            if badgeArray.contains(request.rawValue) {
            
                print("Badge found!")
                
            } else {
            
                okay = false
            
            }
        
        }
        
        return okay
        
    }
    
}
