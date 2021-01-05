//
//  ViewController.swift
//  rock-paper-scissors
//
//  Created by Vyacheslav on 1/5/21.
//  Copyright © 2021 Vyacheslav. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var rulesButton: UIButton!
    
    var currentPlayerTurn: PlayerTurn = .first
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playButton.layer.cornerRadius = playButton.frame.size.height/2
        playButton.layer.borderWidth = 1
        playButton.layer.borderColor = UIColor.white.cgColor
        
        rulesButton.layer.cornerRadius = playButton.frame.size.height/2
        rulesButton.layer.borderWidth = 1
        rulesButton.layer.borderColor = UIColor.white.cgColor
        
    }


}

