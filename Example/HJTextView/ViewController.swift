//
//  ViewController.swift
//  HJTextView
//
//  Created by developerBHJ on 05/19/2021.
//  Copyright (c) 2021 developerBHJ. All rights reserved.
//

import UIKit
import HJTextView

class ViewController: UIViewController {
    
    
    @IBOutlet weak var accountTF: HJTextField!
    @IBOutlet weak var pwdTF: HJTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accountTF.lineType = .left
        accountTF.errorColor = UIColor.red
        accountTF.titleColor = UIColor.black
        accountTF.lineColor = UIColor.black
        accountTF.delegate = self
        accountTF.titleFromPlaceHolder = true

        pwdTF.lineType = .left
        pwdTF.errorColor = UIColor.red
        pwdTF.titleColor = UIColor.black
        pwdTF.lineColor = UIColor.black
        pwdTF.titleFromPlaceHolder = true
        pwdTF.delegate = self
        
        accountTF.inputViewStyle = .line
        pwdTF.inputViewStyle = .line
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginEvent(_ sender: UIButton) {
        
        self.view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension ViewController:UITextFieldDelegate{
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        guard let content = textField.text else {return}
        let inputTextField = textField as! HJTextField
        if inputTextField.isEqual(accountTF) {
                if content.count >= 4 && content.count <= 8 {
                    inputTextField.errorTitle = ""
                }else{
                    inputTextField.errorTitle = "用户名长度为4到8位字符"
                }
        }else{
            if content.count >= 6 && content.count <= 12 {
                inputTextField.errorTitle = ""
            }else{
                inputTextField.errorTitle = "密码长度为6到12位字符"
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}


extension ViewController:HJTextFieldProtocol{
    
    func textLayoutChanged(text: HJTextField) {
        
    }
}

