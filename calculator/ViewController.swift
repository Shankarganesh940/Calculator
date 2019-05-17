//
//  ViewController.swift
//  calculator
//
//  Created by Greeens5 on 06/05/19.
//  Copyright © 2019 Book. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var a = 0
    var b = 0
    var ans : Int = 0
    var tagno : Int = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func Numbers(_ sender: Any) {
        label.text = label.text! + String((sender as AnyObject).tag)
    }
    
    @IBAction func Clear(_ sender: Any) {
        label.text = ""
    }
    
    @IBAction func Equal(_ sender: Any) {
        b = Int (label.text!)!
        if(tagno == 12)
        {
            ans = a+b
        }
        else if(tagno == 13)
        {
            ans = a-b
        }
        else if(tagno == 14)
        {
            ans = a*b
        }
        else if(tagno == 15)
        {
            ans = a/b
        }
        label.text = String(ans)
        
    }
    
    @IBAction func Operation(_ sender: Any) {
        tagno = ((sender as AnyObject).tag)
        a = Int(label.text!)!
        label.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

