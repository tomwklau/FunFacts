//
//  ViewController.swift
//  FunFacts
//
//  Created by Tom Lau on 3/1/18.
//  Copyright © 2018 tlau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!

    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()

    override func viewDidLoad() {
        super.viewDidLoad()

        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }


}
