//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        if s1 == "" && s2 == "" && shuffle == "" {
        
            return true
        
        } else if shuffle.characters.count != s1.characters.count + s2.characters.count {
        
            return false
        
        } else {
        
            var string1Array = [Character]()
            var string2Array = [Character]()
            
            
            for character in shuffle.characters {
            
                for string1Character in s1.characters {
                
                    if character == string1Character {
                    
                        string1Array.append(character)
                    
                    }
    
                }
                
                for string2Character in s2.characters {
                    
                    if character == string2Character {
                        
                        string2Array.append(character)
                        
                    }
                    
                }
            
            }
        
            
            let string1Print: [Character] = string1Array
            let string2Print: [Character] = string2Array

            let string1ArrayConverted = String(string1Print)
            let string2ArrayConverted = String(string2Print)
            
            if string1ArrayConverted == s1 && string2ArrayConverted == s2 {
            
                return true
            
            } else {
            
                return false
            
            }
        
        }
    
        return false
        
    }
    
}
