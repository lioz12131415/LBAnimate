//
//  BalloonVC.swift
//  LBAnimateExample
//
//  Created by ליעוז בלקי on 16/10/2023.
//

import UIKit
import LBAnimate

class BalloonVC: UIViewController {

    @IBOutlet weak var animation_view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animation_view.lb_animate?.balloon?
            .delay(0)
            .width(100)
            .height(100)
            .duration(2.0)
            .numberOfTaps(2)
            .attach(UIImage(named: "heart"))
        
        animation_view.lb_animate?.balloon?.didStop {
            /* Finish Balloon Animation */
        }
        
        animation_view.lb_animate?.balloon?.didStart {
            /* Start Balloon Animation */
        }
        
        animation_view.lb_animate?.balloon?.didTouch {
            /* Did Touch animation view */
        }
    }
}

extension BalloonVC {
    // ============================================= //
    // MARK: -
    // ============================================= //
    internal static func show(over navigation: UINavigationController?) {
        let storyboard = UIStoryboard(name: "Balloon", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! BalloonVC
        
        navigation?.pushViewController(controller, animated: true)
    }
}

