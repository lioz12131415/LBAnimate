//
//  BreatheVC.swift
//  LBAnimateExample
//
//  Created by ליעוז בלקי on 16/10/2023.
//

import UIKit
import LBAnimate

class BreatheVC: UIViewController {
    
    @IBOutlet weak var animation_view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         * */
    }
    
    @IBAction func stopTouch(_ sender: UIButton) {
        animation_view.lb_animate?.breathe?.stop()
    }
    
    @IBAction func startTouch(_ sender: UIButton) {
        animation_view.lb_animate?.breathe?
            .delay(0.0)
            .duration(2.0)
            .maxScaleY(1.20)
            .maxScaleX(1.20)
            .minScaleY(0.90)
            .minScaleX(0.90)
            .start()
    }
}

extension BreatheVC {
    // ============================================= //
    // MARK: -
    // ============================================= //
    internal static func show(over navigation: UINavigationController?) {
        let storyboard = UIStoryboard(name: "Breathe", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! BreatheVC
        
        navigation?.pushViewController(controller, animated: true)
    }
}




