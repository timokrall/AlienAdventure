//
//  SettingsViewController.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - SettingsViewController: UIViewController

class SettingsViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var levelSegmentedControl: UISegmentedControl!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var showBadgesLabel: UILabel!    
    @IBOutlet weak var showBadgesSwitch: UISwitch!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributesDictionary: [String:AnyObject] = [
            NSFontAttributeName: UIFont(name: Settings.Common.Font, size: 18)!
        ]
        
        titleLabel.font = UIFont(name: Settings.Common.Font, size: 32)
        showBadgesLabel.font = UIFont(name: Settings.Common.Font, size: 20)
        showBadgesSwitch.onTintColor = UIColor.magentaColor()
        levelSegmentedControl.setTitleTextAttributes(attributesDictionary, forState: .Normal)
        Settings.Common.Level = levelSegmentedControl.selectedSegmentIndex
        startGameButton.titleLabel?.font = UIFont(name: Settings.Common.Font, size: 20)
        
        addTargets()
    }
    
    // MARK: Add Targets
    
    func addTargets() {
        print("adding targets!")
        
        levelSegmentedControl.addTarget(self,
            action: Selector("switchLevel:"),
            forControlEvents: UIControlEvents.ValueChanged)
        
        startGameButton.addTarget(self,
            action: Selector("startGame"),
            forControlEvents: UIControlEvents.TouchUpInside)
        
        showBadgesSwitch.addTarget(self,
            action: Selector("showBadges:"),
            forControlEvents: UIControlEvents.ValueChanged)
        
    }
    
    // MARK: Implementing Actions
    
    func switchLevel(segmentControl: UISegmentedControl) {
        print("level control has changed!")
        
        // Use segmentControl to identify different cases
        // Depending on the selected part of the control, a different level is chosen
        switch segmentControl.selectedSegmentIndex {
            case 0: Settings.Common.Level = 0
            case 1: Settings.Common.Level = 1
            case 2: Settings.Common.Level = 2
            case 3: Settings.Common.Level = 3
            default: break
        }
    }
    
    func showBadges(switchControl: UISwitch) {
        print("show badges switch has changed!")
        
        // Use switchControl to detect whether switch is turned-on or turned-off
        // Activate or deactivate badges depending on state of switch
        if switchControl.on {
            Settings.Common.ShowBadges = true
        } else {
            Settings.Common.ShowBadges = false
        }
    }
    
    func startGame() {
        print("start button has been pressed!")
        
        // Transition to "AlienAdventureViewController" when start button is pressed
        let alienAdventureViewController = self.storyboard!.instantiateViewControllerWithIdentifier("AlienAdventureViewController")
            as! AlienAdventureViewController
        self.presentViewController(alienAdventureViewController,
            animated: true, completion: nil)
    }
}