//
//  ViewController.swift
//  DrawingBoard
//
//  Created by ZhangAo on 15-2-15.
//  Copyright (c) 2015年 zhangao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var board: Board!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


     @IBAction func switchBrush(sender: UISegmentedControl) {
        switch (sender.selectedSegmentIndex) {
        case 0:
            self.board.painter = LinePainter()
        case 1:
            self.board.painter = DashLinePainter()
        case 2:
            self.board.painter = SquarePainter()
        case 3:
            self.board.painter = RoundPainter()
        default:
            assert(false, "")
        }
    }
}
