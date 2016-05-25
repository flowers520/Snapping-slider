//
//  ViewController.swift
//  Snapping slider
//
//  Created by jim on 16/5/25.
//  Copyright © 2016年 jim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SnappingSliderDelegate {
    
    private var numberOfCupsOfTeaIHaveDrankSoFar:Int = 0
    private let snappingSlider:SnappingSlider = SnappingSlider(frame: CGRectMake(0.0, 0.0, 10.0, 10.0), title: "滑动")
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        snappingSlider.delegate = self
        snappingSlider.frame = CGRectMake(0.0, 0.0, self.view.bounds.size.width * 0.5, 50.0)
        snappingSlider.center = CGPointMake(self.view.bounds.size.width * 0.5, self.view.bounds.size.height * 0.5)
        self.view.addSubview(snappingSlider)
    }
    
    func snappingSliderDidIncrementValue(snapSwitch: SnappingSlider) {
        print("+")
    }
    
    func snappingSliderDidDecrementValue(snapSwitch: SnappingSlider) {
        
        print("-")
    }
    
    func snappingSliderDidDownVlaue(slider: SnappingSlider) {
        print("xia")
    }
    
    func snappingSliderDidUpVlaue(slider: SnappingSlider) {
        print("shang")
    }
}

