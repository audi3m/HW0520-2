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
    
    @IBOutlet var tabButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTitle()
        setTextField()
        
        designButton(firstButton, title: "공개 예정", image: "blue", titleColor: .black, backgroundColor: .white)
        designButton(secondButton, title: "모두의 인기 컨텐츠", image: "turquoise", titleColor: .white, backgroundColor: .black)
        designButton(thirdButton, title: "탑 10 시리즈", image: "pink", titleColor: .white, backgroundColor: .black)
        
        designResultLabel()
        
    }
    
    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func tabButtonTapped(_ sender: UIButton) {
        let tag = sender.tag
        for i in 0...2 {
            tabButtons[i].backgroundColor = .clear
            tabButtons[i].setTitleColor(.white, for: .normal)
        }
        tabButtons[tag].backgroundColor = .white
        tabButtons[tag].setTitleColor(.black, for: .normal)
        
        resultLabel.text = tabButtons[tag].currentTitle ?? ""
        
    }
    
    func setTitle() {
        tabTwoTitleLabel.text = "NEW & HOT 검색"
        tabTwoTitleLabel.font = .systemFont(ofSize: 20, weight: .semibold)
    }
    
    func setTextField() {
        searchTextField.placeholder = "게임, 시리즈, 영화를 검색하세요..."
        searchTextField.backgroundColor = .darkGray
        searchTextField.layer.cornerRadius = 5
    }
    
    func designButton(_ button: UIButton, title: String, image: String, titleColor: UIColor, backgroundColor: UIColor) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button.setImage(UIImage(named: image)!, for: .normal)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 15
    }
    
    func designResultLabel() {
        resultLabel.text = "공개 예정"
        resultLabel.font = .systemFont(ofSize: 30)
        resultLabel.textAlignment = .center
    }

}


