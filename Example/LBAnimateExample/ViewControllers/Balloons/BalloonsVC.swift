//
//  BalloonsVC.swift
//  LBAnimateExample
//
//  Created by ליעוז בלקי on 18/10/2023.
//

import UIKit

class BalloonsVC: UIViewController {
    
    @IBOutlet weak var animation_view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animation_view.lb_animate?.balloons?
            .delay(0.0)
            .velocity(50)
            .minScale(0.4)
            .maxScale(1.0)
            .numberOfTaps(1)
            .numberOfBalloons(50)
            .attach(UIImage(named: "heart_unfill"))
        
        animation_view.lb_animate?.balloons?.didStop {
            /* Finish Firework Animation */
        }
        
        animation_view.lb_animate?.balloons?.didStart {
            /* Start Firework Animation */
        }
        
        animation_view.lb_animate?.balloons?.didTouch {
            /* Did Touch animation view */
        }
    }
}

extension BalloonsVC {
    // ============================================= //
    // MARK: -
    // ============================================= //
    internal static func show(over navigation: UINavigationController?) {
        let storyboard = UIStoryboard(name: "Balloons", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! BalloonsVC
        
        navigation?.pushViewController(controller, animated: true)
    }
}


