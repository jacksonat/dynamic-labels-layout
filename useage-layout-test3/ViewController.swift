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
    
    
    
    // Create a horizontal stackview
    //let horizontalStackView = UIStackView()
    
    
    // Set up a UILabel to style and add programmatically later
    
    
    // For convenience the words are added as separate indicies; this will be a sentence that will be parsed according to the occurrence of a space in future
    let outputArray = ["The", "quick", "brown", "fox", "jumped", "over", "the", "lazy", "dog"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var lineWidth: CGFloat = 0
        
        // Set maximum width allowed until you force label into a new stack view
        // Calculate device size
        
        let bounds = UIScreen.mainScreen().bounds
        let width = bounds.size.width
        
        let maximumAllowedLineWidth: CGFloat = width * 0.8 // Might have to reset this to recalculate upon rotation
        
        print("Calculated Maximum Line Width is \(maximumAllowedLineWidth)")
        
        for i in 0..<outputArray.count {
        
            let outputLabel = UILabel()
            
            outputLabel.font = UIFont(name: "Futura-Medium", size: 24.0)
            
            outputLabel.text = outputArray[i]
            
            let labelWidth = outputLabel.intrinsicContentSize().width
            
            print(labelWidth)
            
            if lineWidth + labelWidth < maximumAllowedLineWidth {
            
                topStackView.addArrangedSubview(outputLabel)
            
            } else {
            
                bottomStackView.addArrangedSubview(outputLabel)
            
            }
            
            lineWidth += labelWidth
        
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

