//
//  ViewController.swift
//  APNGTest
//
//  Created by Gu Chao on 2020/10/16.
//

import UIKit
import APNGKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let image = APNGImage(named: "mini2.png") // crash
//        let image = APNGImage(named: "mini2_normal.png")

        let imageView = APNGImageView(image: image)
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            imageView.startAnimating()
        }
    }


}


