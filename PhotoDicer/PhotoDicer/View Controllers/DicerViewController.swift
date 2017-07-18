//
//  DicerViewController.swift
//  PhotoDicer
//
//  Created by Harry Nelken on 7/17/17.
//  Copyright © 2017 Harry Nelken. All rights reserved.
//

import UIKit

class DicerViewController: UIViewController {

    var pickedImage: UIImage?
    
    @IBOutlet private weak var photoView: UIImageView!
    @IBOutlet private weak var gridView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let image = pickedImage {
            photoView.image = image
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
