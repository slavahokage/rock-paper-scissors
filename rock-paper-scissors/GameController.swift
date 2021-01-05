//
//  GameControllerViewController.swift
//  rock-paper-scissors
//
//  Created by Vyacheslav on 1/5/21.
//  Copyright © 2021 Vyacheslav. All rights reserved.
//

import UIKit

class GameController: UIViewController {

    @IBOutlet weak var paper: UIImageView!
    
    @IBOutlet weak var scissors: UIImageView!
    
    @IBOutlet weak var rock: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var playerOneChoise: PlayerChoise = .undefined
    
    var playerTwoChoise: PlayerChoise = .undefined
    
    var currentTurn: PlayerTurn = .first
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func paperChoise(_ sender: Any) {
        setPlayerChoise(choise: .paper)
    }
    
    @IBAction func scissorsChoise(_ sender: Any) {
        setPlayerChoise(choise: .scissors)
    }
    
    @IBAction func rockChoise(_ sender: Any) {
        setPlayerChoise(choise: .rock)
    }
    
    
    func setPlayerChoise(choise: PlayerChoise) {
        if currentTurn == .first {
            playerOneChoise = choise
            label.text = "Player 2 your choise"
            currentTurn = .second
        } else {
            playerTwoChoise = choise
            
            getResult()
        }
    }
    
    func getResult() {
        
        if playerOneChoise == .paper && playerTwoChoise == .scissors {
            reset()
            showWinner(winner: .second)
        }
        
        if playerOneChoise == .paper && playerTwoChoise == .rock {
            reset()
            showWinner(winner: .first)
        }
        
        if playerOneChoise == .paper && playerTwoChoise == .paper {
            reset()
            showWinner(winner: .tie)
        }
        
        
        
        if playerOneChoise == .rock && playerTwoChoise == .scissors {
            reset()
            showWinner(winner: .first)
        }
        
        if playerOneChoise == .rock && playerTwoChoise == .rock {
            reset()
            showWinner(winner: .tie)
        }
        
        if playerOneChoise == .rock && playerTwoChoise == .paper {
            reset()
            showWinner(winner: .second)
        }
        
        
        if playerOneChoise == .scissors && playerTwoChoise == .scissors {
            reset()
            showWinner(winner: .tie)
        }
        
        if playerOneChoise == .scissors && playerTwoChoise == .rock {
            reset()
            showWinner(winner: .second)
        }
        
        if playerOneChoise == .scissors && playerTwoChoise == .paper {
            reset()
            showWinner(winner: .first)
        }
    }
    
    
    func reset() {
        
        playerOneChoise = .undefined
        
        playerTwoChoise = .undefined
        
        currentTurn = .first
        
        label.text = "Player 1 your choise"
    }
    
    func showWinner(winner: PlayerWin) {
        let result = storyboard?.instantiateViewController(withIdentifier: "ResultController") as! ResultController
        result.result = winner
        present(result, animated: true, completion: nil)
    }
}
