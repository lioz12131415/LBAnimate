//
//  SoapBubblesVC.swift
//  LBAnimateExample
//
//  Created by ליעוז בלקי on 18/10/2023.
//

import UIKit
import LBAnimate

class SoapBubblesVC: UIViewController {
    
    @IBOutlet weak var animation_view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animation_view.lb_animate?.soapBubbles?
            .count(10)
            .delay(0.0)
            .scale(0.4)
            .velocity(70)
            .duration(2.0)
            .numberOfTaps(1)
            .attach(UIImage(named: "heart_unfill"))
        
        animation_view.lb_animate?.soapBubbles?.didStop {
            /* Finish Firework Animation */
        }
        
        animation_view.lb_animate?.soapBubbles?.didStart {
            /* Start Firework Animation */
        }
        
        animation_view.lb_animate?.soapBubbles?.didTouch {
            /* Did Touch animation view */
        }
    }
}

extension SoapBubblesVC {
    // ============================================= //
    // MARK: -
    // ============================================= //
    internal static func show(over navigation: UINavigationController?) {
        let storyboard = UIStoryboard(name: "SoapBubbles", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! SoapBubblesVC
        
        navigation?.pushViewController(controller, animated: true)
    }
}


