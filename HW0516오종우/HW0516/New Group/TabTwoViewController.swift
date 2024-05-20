//
//  TabTwoViewController.swift
//  HW0516
//
//  Created by J Oh on 5/16/24.
//

import UIKit

class TabTwoViewController: UIViewController {
    
    @IBOutlet var tabTwoTitleLabel: UILabel!
    @IBOutlet var searchTextField: UITextField!
    
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    @IBOutlet var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabTwoTitleLabel.text = "NEW & HOT 검색"
        tabTwoTitleLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        
        searchTextField.placeholder = "게임, 시리즈, 영화를 검색하세요..."
        searchTextField.backgroundColor = .darkGray
        searchTextField.layer.cornerRadius = 5
        
        firstButton.setTitle("공개 예정", for: .normal)
        firstButton.setTitleColor(.black, for: .normal)
        firstButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        firstButton.setImage(UIImage(named: "blue")!, for: .normal)
        firstButton.backgroundColor = .white
        firstButton.layer.cornerRadius = 15
        
        secondButton.setTitle("모두의 인기 컨텐츠", for: .normal)
        secondButton.setTitleColor(.white, for: .normal)
        secondButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        secondButton.setImage(UIImage(named: "turquoise")!, for: .normal)
        secondButton.backgroundColor = .clear
        secondButton.layer.cornerRadius = 15
        
        thirdButton.setTitle("탑 10 시리즈", for: .normal)
        thirdButton.setTitleColor(.white, for: .normal)
        thirdButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        thirdButton.setImage(UIImage(named: "pink")!, for: .normal)
        thirdButton.backgroundColor = .clear
        thirdButton.layer.cornerRadius = 15
        
        resultLabel.text = "공개 예정"
        resultLabel.font = .systemFont(ofSize: 30)
        resultLabel.textAlignment = .center
        
    }
    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
        print("공개 예정")
        firstButton.backgroundColor = .white
        firstButton.setTitleColor(.black, for: .normal)
        
        secondButton.backgroundColor = .clear
        secondButton.setTitleColor(.white, for: .normal)
        thirdButton.backgroundColor = .clear
        thirdButton.setTitleColor(.white, for: .normal)
        
        resultLabel.text = "공개 예정"
        
    }
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        print("모두의 인기 컨텐츠")
        secondButton.backgroundColor = .white
        secondButton.setTitleColor(.black, for: .normal)
        
        firstButton.backgroundColor = .clear
        firstButton.setTitleColor(.white, for: .normal)
        thirdButton.backgroundColor = .clear
        thirdButton.setTitleColor(.white, for: .normal)
        
        resultLabel.text = "모두의 인기 컨텐츠"
    }
    
    @IBAction func thirdButtonTapped(_ sender: UIButton) {
        print("탑 10 시리즈")
        thirdButton.backgroundColor = .white
        thirdButton.setTitleColor(.black, for: .normal)
        
        firstButton.backgroundColor = .clear
        firstButton.setTitleColor(.white, for: .normal)
        secondButton.backgroundColor = .clear
        secondButton.setTitleColor(.white, for: .normal)
        
        resultLabel.text = "탑 10 시리즈"
    }
    
    

}


