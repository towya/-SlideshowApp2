//
//  ViewController.swift
//  SlideshowApp2
//
//  Created by 稲葉任哉 on 2021/04/07.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tapimage(_ sender: UITapGestureRecognizer) {
    }
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    
    var timer:Timer!
    
    
    var nowIndex:Int = 0
    
    var imageArray: [UIImage] = [
        UIImage(named: "neko1")!,
        UIImage(named: "neko2")!,
        UIImage(named: "neko3")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = imageArray[nowIndex]
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sizeUpViewController:SizeUpViewController = segue.destination as! SizeUpViewController
        sizeUpViewController.images = self.imageView.image!
    }
    
    @IBAction func back(_ sender: Any) {
        if self.timer == nil {
            if self.nowIndex == 0 {
                self.nowIndex = imageArray.count-1
//            self.nowIndex = 2
        }else if self.nowIndex != 0 {
            self.nowIndex -= 1
        }
        self.imageView.image = imageArray[nowIndex]
        }
    }
    
    @IBAction func start(_ sender: Any) {
        if self.timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            self.startButton.setTitle("停止", for: .normal)
        }else {
            self.timer.invalidate()
            self.timer = nil
            self.startButton.setTitle("再生", for: .normal)        }
        
    }
    
    @IBAction func proceed(_ sender: Any) {
        if self.timer == nil {
            if self.nowIndex != 2 {
            self.nowIndex += 1            
            }else if self.nowIndex == 2 {
            self.nowIndex = 0
        }
        self.imageView.image = imageArray[nowIndex]
        }
    }
    @objc func changeImage(){
        self.imageView.image = imageArray[nowIndex]

        self.nowIndex += 1
        
        if self.nowIndex == imageArray.count {
            self.nowIndex = 0
        }
        
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
    }
    
}

