//
//  ViewController.swift
//  RollingTheDice
//
//  Created by Mine Rala on 15.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var second: UIImageView!
    @IBOutlet weak var first: UIImageView!
    
    let items = [UIImage(named: "dice1"),UIImage(named: "dice2"),UIImage(named: "dice3"),UIImage(named: "dice4"),UIImage(named: "dice5"),UIImage(named: "dice6")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClicked(_ sender: Any) {
        let firstImage = Int(arc4random_uniform(6))
        let secondImage = Int(arc4random_uniform(6))
        
        first.image = items[firstImage]
        second.image = items[secondImage]
    }
    
}

