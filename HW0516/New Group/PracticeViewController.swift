//
//  PracticeViewController.swift
//  HW0516
//
//  Created by J Oh on 5/17/24.
//

import UIKit

class PracticeViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var checkButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    // 닉네임
    // 1. 버튼 클릭 인식
    // 2. 텍스트 필드 글자 표현
    // 3. 레이블에 텍스트필드 값
    // 4. 2글자 이상 8글자 미만 >> 다시 입력
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        print(userTextField.text!.count)
        if userTextField.text!.count >= 2 {
            resultLabel.text = userTextField.text
        } else {
            resultLabel.text = "2글자 이상 8글자 미만"
        }
    }
    
    
    
    
    
    

}
