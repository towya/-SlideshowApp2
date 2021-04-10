//
//  SizeUpViewController.swift
//  SlideshowApp2
//
//  Created by 稲葉任哉 on 2021/04/07.
//

import UIKit

class SizeUpViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var images =  UIImage(named: "neko1")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = images
        
    
    }
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
