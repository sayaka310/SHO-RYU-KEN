//
//  ViewController.swift
//  SHO-RYU-KEN
//
//  Created by user1 on 2021/11/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageView: UIImageView!
    
    let images = ["attak1", "attak2", "attak3", "attak4", "attak5", "attak6", "attak7", "attak8", "attak9", "attak10", "attak11", "attak12", "attak13", "attak14", "attak15", "attak16", "attak17", "attak18", "attak19", "attak20"]
    
    @IBAction func actionButtun(_ sender: Any) {

        imageView.animationImages = dispImages(for: images)
        imageView.animationDuration = 0.9
        imageView.animationRepeatCount = 1
        imageView.image = imageView.animationImages?.first
        imageView.startAnimating()
    
    }
    
    func dispImages(for name: [String]) -> [UIImage] {
        
        var images = [UIImage]()
        for imageName in name {
            if let image = UIImage(named: imageName) {
                images.append(image)
            }
        }
        return images
    }
}

