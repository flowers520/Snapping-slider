//
//  ViewController.swift
//  Snapping slider
//
//  Created by jim on 16/5/25.
//  Copyright © 2016年 jim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SnappingSliderDelegate {
    
    private let snappingSlider:SnappingSlider = SnappingSlider(frame: CGRectMake(0.0, 0.0, 10.0, 10.0), title: "滑动")
    private let bladderFillLabel: UILabel = UILabel(frame: CGRectZero)
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        snappingSlider.delegate = self
        snappingSlider.frame = CGRectMake(0.0, 0.0, self.view.bounds.size.width * 0.5, self.view.bounds.size.width * 0.5)
        snappingSlider.center = CGPointMake(self.view.bounds.size.width * 0.5, self.view.bounds.size.height * 0.5)
        self.view.addSubview(snappingSlider)
        
        bladderFillLabel.frame = CGRectMake(0, 0, self.view.bounds.width * 0.5, 80.0)
        bladderFillLabel.center = CGPointMake(self.view.bounds.width * 0.5, bladderFillLabel.bounds.size.height * 1)
        bladderFillLabel.font = UIFont(name: "TrebuchetMS-Bold", size: 25.0)
        bladderFillLabel.textColor = UIColor.lightGrayColor()
        bladderFillLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(bladderFillLabel)
    }
    
    func snappingSliderDidIncrementValue(snapSwitch: SnappingSlider) {
        print("右")
        bladderFillLabel.text = "右"
    }
    
    func snappingSliderDidDecrementValue(snapSwitch: SnappingSlider) {
        
        print("左")
        bladderFillLabel.text = "左"

    }
    
    func snappingSliderDidDownVlaue(slider: SnappingSlider) {
        print("下")
        bladderFillLabel.text = "下"

    }
    
    func snappingSliderDidUpVlaue(slider: SnappingSlider) {
        print("上")
        bladderFillLabel.text = "上"

    }
}

