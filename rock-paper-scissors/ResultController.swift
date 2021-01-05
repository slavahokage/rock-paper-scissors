//
//  Result.swift
//  rock-paper-scissors
//
//  Created by Vyacheslav on 1/5/21.
//  Copyright © 2021 Vyacheslav. All rights reserved.
//

import UIKit

class ResultController: UIViewController {

    var result: PlayerWin?
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if result! == .first  {
            label.text = "Player 1 is WINNER!"
        }
        
        if result! == .second  {
            label.text = "Player 2 is WINNER!"
        }
        
        if result! == .tie  {
            label.text = "Tie"
        }
    }
}
