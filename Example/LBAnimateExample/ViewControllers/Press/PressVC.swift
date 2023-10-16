//
//  PressVC.swift
//  LBAnimateExample
//
//  Created by ליעוז בלקי on 16/10/2023.
//

import UIKit
import LBAnimate

class PressVC: UIViewController {
    
    @IBOutlet weak var pressButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pressButton.lb_animate?.press?
            .delay(0.00)
            .duration(0.50)
            .minScaleX(0.90)
            .minScaleY(0.90)
            .attach()
        
        pressButton.lb_animate?.press?.endPress {
            /* Use If Needed Began Press */
        }
        
        pressButton.lb_animate?.press?.beganPress {
            /* Use If Needed Began Press */
        }
    }
    
    @IBAction func pressTouch(_ sender: UIButton) {
       /* Press Touch */
    }
}

extension PressVC {
    // ============================================= //
    // MARK: -
    // ============================================= //
    internal static func show(over navigation: UINavigationController?) {
        let storyboard = UIStoryboard(name: "Press", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! PressVC
        
        navigation?.pushViewController(controller, animated: true)
    }
}

