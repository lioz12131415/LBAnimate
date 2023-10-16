//
//  MainVC.swift
//  LBAnimateExample
//
//  Created by ליעוז בלקי on 16/10/2023.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate var array = [
        "Press",
        "Breathe",
        "Balloon",
        "Firework"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /* * * */
        tableView.delegate   = self
        tableView.dataSource = self
    }
}

extension MainVC: UITableViewDelegate {
    // ==================================================== //
    // MARK: - UI Table View Delegate
    // ==================================================== //
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch array[indexPath.row] {
            case "Press":    PressVC.show(over: navigationController)
            case "Breathe":  BreatheVC.show(over: navigationController)
            case "Balloon":  BalloonVC.show(over: navigationController)
            case "Firework": FireworkVC.show(over: navigationController)
        default:
            break
        }
    }
}

extension MainVC: UITableViewDataSource {
    // ==================================================== //
    // MARK: - UI Table View Data Source
    // ==================================================== //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCell
        
        cell.text = array[indexPath.row]
        return cell
    }
}

