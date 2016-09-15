//
//  ViewController.swift
//  useage-layout-test3
//
//  Created by Jackson Taylor on 15/09/2016.
//  Copyright © 2016 Jackson Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Set up a UILabel to style and add programmatically later
    let outputLabel = UILabel()
    
    // For convenience the words are added as separate indicies; this will be a sentence that will be parsed according to the occurrence of a space in future
    let outputArray = ["The", "quick", "brown", "fox", "jumped", "over", "the", "lazy", "dog"]
    
    @IBOutlet weak var topStackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        outputLabel.font = UIFont(name: "Futura-Medium", size: 24.0)
        outputLabel.text = "Hello world"
        topStackView.addArrangedSubview(outputLabel)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

