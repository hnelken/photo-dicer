//
//  ViewController.swift
//  PhotoDicer
//
//  Created by Harry Nelken on 1/25/17.
//  Copyright © 2017 Harry Nelken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func takePicturePressed(_ sender: Any) {
        // Go to camera screen
        topLabel.text = "TAKE"
    }
    
    @IBAction func uploadPicturePressed(_ sender: Any) {
        // Go to camera roll
        topLabel.text = "UPLOAD"
    }
}

