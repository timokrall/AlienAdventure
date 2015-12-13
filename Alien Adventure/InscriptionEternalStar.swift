//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        
        var haveInscription = 0
        
        for UDItem in inventory {
        
            if ((UDItem.inscription?.containsString("THE ETERNAL STAR")) != nil) {
                
                if UDItem.inscription!.containsString("THE ETERNAL STAR") {
            
                    haveInscription = 1
                    return UDItem
                
                }
            }
        
        }
        
        if haveInscription == 0 {
        
            return nil
        
        }
        
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"