//
//  ViewController.swift
//  PageScroll
//
//  Created by LionMane Software on 2/13/17.
//  Copyright © 2017 LionMane Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()
    var contentWidth: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: view.frame.size.height/2 - 75, width: 150, height: 150)
            
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)

    }

}

