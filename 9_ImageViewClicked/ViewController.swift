//
//  ViewController.swift
//  9_ImageViewClicked
//
//  Created by KUDEC on 8.09.2018.
//  Copyright © 2018 Adem Koseoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var image1 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //Resmin tıklanabilir olması için
        myImageView.isUserInteractionEnabled = true
        //Jest tanımlıyoruz
        let gestureRecognizer = UIGestureRecognizer(target: self, action: #selector(ViewController.changePicture))
        // Tanımladınız jesti İmageView içerisine atıyoruz
        myImageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var labelPicture: UILabel!
    
    
    
    
    @objc func changePicture () {
        if image1 == true {
            myImageView.image = UIImage(named: "image1.jpg" )
            image1 = false
            labelPicture.text = "1290 * 900 Görsel İmage 1"
        }
        else {
            myImageView.image = UIImage(named: "image2.jpg" )
            image1 = true
            labelPicture.text = "1290 * 900 Görsel İmage 2"
            
        }
    }
 


}

