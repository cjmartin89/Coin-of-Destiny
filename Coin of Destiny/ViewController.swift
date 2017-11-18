//
//  ViewController.swift
//  Coin of Destiny
//
//  Created by Chris Martin on 10/23/17.
//  Copyright © 2017 Martin Technical Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomQuarterIndex : Int = 0
    
    let quarterArray = ["heads", "tails"]
    
    @IBOutlet weak var CoDImageView: UIImageView!
    @IBOutlet weak var flipButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDestinyImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateDestinyImage(){
        randomQuarterIndex = Int(arc4random_uniform(2))
        
        CoDImageView.image = UIImage(named: quarterArray[randomQuarterIndex])
    }

    @IBAction func flipButton(_ sender: Any) {
        updateDestinyImage()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDestinyImage()
    }
}

