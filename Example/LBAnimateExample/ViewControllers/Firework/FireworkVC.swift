//
//  FireworkVC.swift
//  LBAnimateExample
//
//  Created by ליעוז בלקי on 16/10/2023.
//

import UIKit
import LBAnimate

class FireworkVC: UIViewController {
    
    @IBOutlet weak var animation_view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animation_view.lb_animate?.firework?
            .delay(0.0)
            .duration(2.0)
            .numberOfTaps(1)
            .attach([UIImage(named: "heart")])
        
        animation_view.lb_animate?.firework?.didStop {
            /* Finish Firework Animation */
        }
        
        animation_view.lb_animate?.firework?.didStart {
            /* Start Firework Animation */
        }
        
        animation_view.lb_animate?.firework?.didTouch {
            /* Did Touch animation view */
        }
    }
}

extension FireworkVC {
    // ============================================= //
    // MARK: -
    // ============================================= //
    internal static func show(over navigation: UINavigationController?) {
        let storyboard = UIStoryboard(name: "Firework", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! FireworkVC
        
        navigation?.pushViewController(controller, animated: true)
    }
}

