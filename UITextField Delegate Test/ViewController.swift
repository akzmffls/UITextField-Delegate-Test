//
//  ViewController.swift
//  UITextField Delegate Test
//
//  Created by D7703_14 on 2018. 3. 22..
//  Copyright © 2018년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var Textlbl: UILabel!
    
    @IBOutlet var TextTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // UiTextFieldDeleagte 객체와 ViewController 객채와 연결
        TextTF.delegate = self
        
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool  {// called when 'return' key pressed.
        view.backgroundColor = UIColor.yellow
        TextTF.resignFirstResponder()
        return true
    }
    

}

