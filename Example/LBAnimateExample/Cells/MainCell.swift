//
//  MainCell.swift
//  LBAnimateExample
//
//  Created by ליעוז בלקי on 16/10/2023.
//

import UIKit

class MainCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    internal var text: String = "" {
        didSet { setInfo() }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        /*
         * */
        selectionStyle = .none
    }
    
    fileprivate func setInfo() {
        label.text = text
    }
}
