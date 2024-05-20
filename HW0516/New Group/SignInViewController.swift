//
//  SignInViewController.swift
//  HW0516
//
//  Created by J Oh on 5/16/24.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet var SignInPageLabel: UILabel!
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var codeTextField: UITextField!
    
    @IBOutlet var alertLabel: UILabel!
    @IBOutlet var signInButton: UIButton!
    
    @IBOutlet var extraInfoLabel: UILabel!
    @IBOutlet var extraInfoSwitch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTextField(emailTextField, placeholder: "이메일 주소 또는 전화번호", keyType: .emailAddress)
        setTextField(passwordTextField, placeholder: "비밀번호", keyType: .default, secure: true)
        setTextField(nicknameTextField, placeholder: "닉네임", keyType: .default)
        setTextField(locationTextField, placeholder: "위치", keyType: .default)
        setTextField(codeTextField, placeholder: "추천 코드 입력", keyType: .numberPad)
        
        designSignInButton()
        designExtraSwitch()
        
    }
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {
        print("Button Tapped")
        view.endEditing(true)
        
        if !emailTextField.text!.isEmpty && passwordTextField.text!.count >= 6 {
            print("Sign in")
            alertLabel.text = ""
        } else {
            alertLabel.text = "이메일 필수, 비밀번호 6자리 이상"
        }
        
    }
    
    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    func setTextField(_ field: UITextField, placeholder: String, keyType: UIKeyboardType, secure: Bool = false) {
        field.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        field.textColor = .white
        field.textAlignment = .center
        field.backgroundColor = .darkGray
        field.keyboardType = keyType
        field.isSecureTextEntry = secure
        field.borderStyle = .roundedRect
    }
    
    func designSignInButton() {
        alertLabel.text = " "
        alertLabel.textColor = .red
        alertLabel.font = .systemFont(ofSize: 12)
        
        signInButton.setTitle("회원가입", for: .normal)
        signInButton.setTitleColor(.black, for: .normal)
        signInButton.backgroundColor = .white
        signInButton.layer.cornerRadius = 10
        signInButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    }
    
    func designExtraSwitch() {
        extraInfoLabel.text = "추가 정보 입력"
        extraInfoLabel.textColor = .white
        
        extraInfoSwitch.setOn(false, animated: true)
        extraInfoSwitch.onTintColor = .red
        extraInfoSwitch.thumbTintColor = .white
    }
    

}
