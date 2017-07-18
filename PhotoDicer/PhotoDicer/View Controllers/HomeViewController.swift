//
//  HomeViewController.swift
//  PhotoDicer
//
//  Created by Harry Nelken on 7/17/17.
//  Copyright © 2017 Harry Nelken. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var topLabel: UILabel!
    
    private var pickedImage: UIImage?
    
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
        
        startImagePicker(for: .camera)
    }
    
    @IBAction func uploadPicturePressed(_ sender: Any) {
        // Go to camera roll
        topLabel.text = "UPLOAD"
        
        startImagePicker(for: .photoLibrary)
    }
    
    
    // MARK: - Private API
    
    private func startImagePicker(for sourceType:UIImagePickerControllerSourceType) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        picker.sourceType = sourceType
        
        // Present image picker
        present(picker, animated: true, completion: nil)
    }
    
    private func headToGridView() {
        
        if let image = pickedImage {
            let dicerVC = DicerViewController(nibName: "DicerView", bundle: nil)
            print("nib found")
            
            dicerVC.pickedImage = image
            
            self.navigationController?.pushViewController(dicerVC, animated: true)
        }
        else {
            print("no image")
        }
        
    }
    
    
    // MARK: - ImagePickerController Delegate
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // Get picked image
        if let imagePicked: UIImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            pickedImage = imagePicked
            headToGridView()
        }
        
        // Dismiss controller
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        // Dismiss controller
        picker.dismiss(animated: true, completion: nil)
    }


}
