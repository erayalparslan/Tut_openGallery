//
//  ViewController.swift
//  Tut_openGallery
//
//  Created by ruroot on 9/13/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mImageView: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            //extImage = image
            mImageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}

