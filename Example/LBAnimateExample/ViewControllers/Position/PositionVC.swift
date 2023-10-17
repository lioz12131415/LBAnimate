//
//  PositionVC.swift
//  LBAnimateExample
//
//  Created by ליעוז בלקי on 17/10/2023.
//

import UIKit
import LBAnimate

class PositionVC: UIViewController {
    
    @IBOutlet weak var animation_view: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let location = touches.first?.location(in: view) else {
            return
        }
        
        animation_view.lb_animate?.position?.center.x
            .delay(0)
            .damping(0.5)
            .velocity(0.5)
            .duration(0.5)
            .change(to: location.x) { /* (Finish Animation) Use If Needed */ }
        
        animation_view.lb_animate?.position?.center.y
            .delay(0)
            .damping(0.5)
            .velocity(0.5)
            .duration(0.5)
            .change(to: location.y) {  /* (Finish Animation) Use If Needed */ }
    }
}

extension PositionVC {
    // ============================================= //
    // MARK: -
    // ============================================= //
    internal static func show(over navigation: UINavigationController?) {
        let storyboard = UIStoryboard(name: "Position", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! PositionVC
        
        navigation?.pushViewController(controller, animated: true)
    }
}

