//
//  ViewController.swift
//  Tell Me More
//
//  Created by Jian Yao Ang on 10/26/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var introLabel: UILabel!
    @IBOutlet var predictButton: UIButton!
    @IBOutlet var predictionLabel: UILabel!

    let thePredictions = prediction()
    
    @IBAction func onPredictButtonPressed(sender: AnyObject) {
        
        retrievingPredictions()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        
        self.introLabel.text = "Welcome to Tell Me More"
        self.introLabel.textColor = UIColor.whiteColor()
        
        self.predictionLabel.text = "Press on predict button"
        self.predictionLabel.textColor = UIColor.whiteColor()
        
        self.predictButton.setTitle("Predict", forState: .Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func retrievingPredictions(){
        
        let predictionIndex: Int = Int(arc4random()) % thePredictions.predictionArray.count

        self.predictionLabel.numberOfLines = 0
        self.predictionLabel.text = thePredictions.predictionArray.objectAtIndex(predictionIndex) as NSString
        
    }
    
}





