//
//  SignUpViewController.swift
//  Redi
//
//  Created by Berezhnova <3 on 05.02.2024.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var SignUpButton: UIButton!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var PhoneTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var myCheck: UIButton!
    @IBOutlet weak var NameLbl: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        NameLbl.layer.borderColor = UIColor(hex: 0xA7A7A7).cgColor
        NameLbl.layer.borderWidth = 1.0
        
        confirmTextField.layer.borderColor = UIColor(hex: 0xA7A7A7).cgColor
        confirmTextField.layer.borderWidth = 1.0
        
        passTextField.layer.borderColor = UIColor(hex: 0xA7A7A7).cgColor
        passTextField.layer.borderWidth = 1.0
        
        PhoneTextField.layer.borderColor = UIColor(hex: 0xA7A7A7).cgColor
        PhoneTextField.layer.borderWidth = 1.0
        
        mailTextField.layer.borderColor = UIColor(hex: 0xA7A7A7).cgColor
        mailTextField.layer.borderWidth = 1.0
        
        SignUpButton.isEnabled = false
        
        SignUpButton.backgroundColor = UIColor(hex: 0xA7A7A7)
        SignUpButton.setTitleColor(.white, for: .disabled)
        SignUpButton.setTitleColor(.white, for: .focused)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func CheckBoxBtn(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            sender.frame = CGRect(x: myCheck.frame.origin.x, y: myCheck.frame.origin.y, width: 14, height: 14)
            
        }
        checkEnabledSignUpButton()
    }
    
    private func checkEnabledSignUpButton() {
        let isAllFieldsFilled = !NameLbl.text!.isEmpty &&
                                !passTextField.text!.isEmpty &&
                                !confirmTextField.text!.isEmpty &&
                                !PhoneTextField.text!.isEmpty &&
                                !mailTextField.text!.isEmpty
        
        let isCheckBoxSelected = myCheck.isSelected
        
        SignUpButton.isEnabled = isAllFieldsFilled && isCheckBoxSelected
        
        if SignUpButton.isEnabled {
            SignUpButton.backgroundColor = UIColor(hex: 0x0560FA)
            SignUpButton.setTitleColor(.white, for: .disabled)
        } else {
            SignUpButton.backgroundColor = UIColor(hex: 0xA7A7A7)
            SignUpButton.setTitleColor(.white, for: .disabled)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
