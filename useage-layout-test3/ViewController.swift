//
//  ViewController.swift
//  useage-layout-test3
//
//  Created by Jackson Taylor on 15/09/2016.
//  Copyright © 2016 Jackson Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Create main stack view container with centre x and y constraints in storyboard
    
    
    @IBOutlet weak var topStackView: UIStackView!
    
    @IBOutlet weak var bottomStackView: UIStackView!
    
    @IBOutlet weak var lastStackView: UIStackView!
    
    
    // For convenience the words are added as separate indicies; this will be a sentence that will be parsed according to the occurrence of a space in future
    let outputArray = ["The", "quick", "brown", "fox", "jumped", "over", "the", "lazy", "dog"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var lineWidth: CGFloat = 0
        
        var secondLineWIdth: CGFloat = 0
        
        // Set maximum width allowed until you force label into a new stack view
        // Calculate device size
        
        let bounds = UIScreen.mainScreen().bounds
        let width = bounds.size.width
        
        // This formulation will be redundant when you place mainStackView in a main view container. Then, your measurements will be referencing the container width, which will
        // vary according to screen orientation presumably
        let maximumAllowedLineWidth: CGFloat = width * 0.8
        
        print("Calculated Maximum Line Width is \(maximumAllowedLineWidth)")
        
        var stackViewToAddOnto = 1
        
        for i in 0..<outputArray.count {
            
            let outputLabel = UILabel()
            
            outputLabel.font = UIFont(name: "Futura-Medium", size: 24.0)
            
            outputLabel.text = outputArray[i]
            
            let labelWidth = outputLabel.intrinsicContentSize().width
            
            print(labelWidth)
            
            // TODO: This isn't quite working, because you keep changing stackViewToAddOnto by 1 on every loop, therefore you can use that to judge when to go to the third line
            if stackViewToAddOnto == 1 && lineWidth + labelWidth < maximumAllowedLineWidth {
            
                topStackView.addArrangedSubview(outputLabel)
                
                lineWidth += labelWidth
            
            } else {
            
                stackViewToAddOnto += 1
                
                if secondLineWIdth + labelWidth < maximumAllowedLineWidth {
                
                    bottomStackView.addArrangedSubview(outputLabel)
                    
                    secondLineWIdth += labelWidth
                    
                } else {
                    
                    lastStackView.addArrangedSubview(outputLabel)
                    
                
                
                }
            
            }
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

