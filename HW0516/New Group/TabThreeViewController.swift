//
//  TabThreeViewController.swift
//  HW0516
//
//  Created by J Oh on 5/16/24.
//

import UIKit

class TabThreeViewController: UIViewController {
    
    @IBOutlet var tabExplanationLabel: UILabel!
    @IBOutlet var tabDetailLabel: UILabel!
    
    @IBOutlet var sampleImageView: UIImageView!
    
    @IBOutlet var setButton: UIButton!
    @IBOutlet var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLabels()
        
        setImageView()
        
        setButtons()
        
    }
    
    func setLabels() {
        tabExplanationLabel.text = "'나만의 자동 저장' 기능"
        tabExplanationLabel.font = .systemFont(ofSize: 25, weight: .bold)
        tabExplanationLabel.textAlignment = .center
        
        tabDetailLabel.numberOfLines = 3
        tabDetailLabel.text = dummyText
        tabDetailLabel.font = .systemFont(ofSize: 13)
        tabDetailLabel.textColor = .gray
        tabDetailLabel.textAlignment = .center
    }
    
    func setImageView() {
        sampleImageView.backgroundColor = .gray
        sampleImageView.image = UIImage(named: "dummy")
        sampleImageView.contentMode = .scaleAspectFill
    }
    
    func setButtons() {
        setButton.setTitle("설정하기", for: .normal)
        setButton.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        setButton.tintColor = .white
        setButton.backgroundColor = .blue
        setButton.layer.cornerRadius = 10
        
        searchButton.setTitle("저장 가능한 컨텐츠 살펴보기", for: .normal)
        searchButton.tintColor = .black
        searchButton.backgroundColor = .white
        searchButton.layer.cornerRadius = 10
    }
    
}


let dummyText = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n디바이스에서 언제나 시청할 컨텐츠가 준비되니 지루할 틈이 없어요."
