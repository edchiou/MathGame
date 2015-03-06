//
//  SummaryViewController.swift
//  Speedy
//
//  Created by John Chou on 3/5/15.
//  Copyright (c) 2015 Krishna Kolli. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    var score: Int!
    var operatorsUsed: [Operator]!
    var numTargetNumbersMatched: Int!
    
    @IBOutlet weak var NumTargetResultLabel: UILabel!
    @IBOutlet weak var ScoreResultLabel: UILabel!
    @IBOutlet weak var OperatorResultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayOperators()
        displayScoresAndTarget()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayOperators() {
        var numPlus = 0, numMinus = 0, numMult = 0, numDiv = 0
        for oper in operatorsUsed {
            switch oper {
            case .PLUS: numPlus++
            case .MINUS: numMinus++
            case .MULTIPLY: numMult++
            case .DIVIDE: numDiv++
            default: break
            }
        }
        
        var str = "Plus: \(numPlus) times\nMinus: \(numMinus) times\nMultiply: \(numMult) times\nDivide: \(numDiv) times"
        OperatorResultLabel.text = str
    }
    
    func displayScoresAndTarget() {
        ScoreResultLabel.text = "Score: \(score)"
        NumTargetResultLabel.text = String(numTargetNumbersMatched)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
