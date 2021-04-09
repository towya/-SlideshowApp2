//
//  ViewController.swift
//  SlideshowApp2
//
//  Created by 稲葉任哉 on 2021/04/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    var timer:Timer!
    
    var nowIndex:Int = 0
    
    var imageArray: [UIImage] = [
        UIImage(named: "neko1")!,
        UIImage(named: "neko2")!,
        UIImage(named: "neko3")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: Any) {
        if self.nowIndex == 0 {
            self.nowIndex = 2
        }else if self.nowIndex != 0 {
            self.nowIndex -= 1
        }
        self.imageView.image = imageArray[nowIndex]
        
    }
    
    @IBAction func start(_ sender: Any) {
        if self.timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
        }else {
            self.timer.invalidate()
            self.timer = nil
        }
        
    }
    
    @IBAction func proceed(_ sender: Any) {
        
        if self.nowIndex != 2 {
            self.nowIndex += 1
        }else if self.nowIndex == 2 {
            self.nowIndex = 0
        }
        self.imageView.image = imageArray[nowIndex]
        
    }
    @objc func changeImage(){
        self.imageView.image = imageArray[nowIndex]

        self.nowIndex += 1
        
        if self.nowIndex == imageArray.count {
            self.nowIndex = 0
        }
        
    }
    
    
}

