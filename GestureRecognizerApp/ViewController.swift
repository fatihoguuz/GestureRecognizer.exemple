//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Fatih Oğuz on 26.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelText: UILabel!
    var isApple = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        imageView.isUserInteractionEnabled = true
                let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
                imageView.addGestureRecognizer(gestureRecognizer)
            }
            @objc func changePic() {
                if isApple == true {
                    imageView.image = UIImage(named: "mi")
                    labelText.text = "Xiaomi"
                isApple = false
                }else {
                    imageView.image = UIImage(named: "Apple_logo")
                    labelText.text = "Apple"
                    isApple = true
                }
            }
    }




