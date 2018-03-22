//
//  ViewController.swift
//  UITextField Delegate Test
//
//  Created by D7703_14 on 2018. 3. 22..
//  Copyright © 2018년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var Textlbl: UILabel!
    
    @IBOutlet var TextTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TextTF.placeholder = "입력을 하세요"
        TextTF.clearButtonMode = UITextFieldViewMode.whileEditing
        TextTF.borderStyle = UITextBorderStyle.line
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TextBt(_ sender: UIButton) {
        Textlbl.text = "Hello " + TextTF.text!
        TextTF.text = ""
        TextTF.resignFirstResponder()
    }
    
    // background의 view를 탭하면 키패드가 내려감

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        TextTF.resignFirstResponder()
    }
    
}

