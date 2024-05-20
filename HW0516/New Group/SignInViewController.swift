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
         
        emailTextField.attributedPlaceholder = NSAttributedString(
            string: "이메일 주소 또는 전화번호",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        emailTextField.textColor = .white
        emailTextField.textAlignment = .center
        emailTextField.backgroundColor = .darkGray
        emailTextField.keyboardType = .emailAddress
        emailTextField.isSecureTextEntry = false
        emailTextField.borderStyle = .roundedRect
        
        passwordTextField.attributedPlaceholder = NSAttributedString(
            string: "비밀번호",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        passwordTextField.textColor = .white
        passwordTextField.textAlignment = .center
        passwordTextField.backgroundColor = .darkGray
        passwordTextField.keyboardType = .default
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        
        nicknameTextField.attributedPlaceholder = NSAttributedString(
            string: "닉네임",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        nicknameTextField.textColor = .white
        nicknameTextField.textAlignment = .center
        nicknameTextField.backgroundColor = .darkGray
        nicknameTextField.keyboardType = .emailAddress
        nicknameTextField.isSecureTextEntry = false
        nicknameTextField.borderStyle = .roundedRect
        
        locationTextField.attributedPlaceholder = NSAttributedString(
            string: "위치",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        locationTextField.textColor = .white
        locationTextField.textAlignment = .center
        locationTextField.backgroundColor = .darkGray
        locationTextField.keyboardType = .emailAddress
        locationTextField.isSecureTextEntry = false
        locationTextField.borderStyle = .roundedRect
        
        codeTextField.attributedPlaceholder = NSAttributedString(
            string: "추천 코드 입력",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        codeTextField.textColor = .white
        codeTextField.textAlignment = .center
        codeTextField.backgroundColor = .darkGray
        codeTextField.keyboardType = .numberPad
        codeTextField.isSecureTextEntry = false
        codeTextField.borderStyle = .roundedRect
        
        alertLabel.text = ""
        alertLabel.textColor = .red
        alertLabel.font = .systemFont(ofSize: 12)
        
        signInButton.setTitle("회원가입", for: .normal)
        signInButton.setTitleColor(.black, for: .normal)
        signInButton.backgroundColor = .white
        signInButton.layer.cornerRadius = 10
        signInButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        extraInfoLabel.text = "추가 정보 입력"
        extraInfoLabel.textColor = .white
        
        extraInfoSwitch.setOn(false, animated: true)
        extraInfoSwitch.onTintColor = .red
        extraInfoSwitch.thumbTintColor = .white

        
    }
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        nicknameTextField.endEditing(true)
        locationTextField.endEditing(true)
        codeTextField.endEditing(true)
        
        if !emailTextField.text!.isEmpty && passwordTextField.text!.count >= 6 {
            print("Sign in")
            alertLabel.text = ""
        } else {
            alertLabel.text = "이메일 필수, 비밀번호 6자리 이상"
        }
        
    }
    
    

}
