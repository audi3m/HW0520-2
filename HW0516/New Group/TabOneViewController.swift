//
//  TabOneViewController.swift
//  HW0516
//
//  Created by J Oh on 5/16/24.
//

import UIKit

class TabOneViewController: UIViewController {
    
    @IBOutlet var homeTabTitleNavigationItem: UINavigationItem!
    
    
    @IBOutlet var homeImageView: UIImageView!
    
    @IBOutlet var playButton: UIButton!
    @IBOutlet var myListButton: UIButton!
    
    @IBOutlet var popularLabel: UILabel!
    
    @IBOutlet var contentOneImageView: UIImageView!
    @IBOutlet var contentTwoImageView: UIImageView!
    @IBOutlet var contentThreeImageView: UIImageView!
    
    @IBOutlet var firstCornerImageView: UIImageView!
    @IBOutlet var secondCornerImageView: UIImageView!
    @IBOutlet var thirdCornerImageView: UIImageView!
    
    @IBOutlet var firstTypeImageView: UIImageView!
    @IBOutlet var secondTypeImageView: UIImageView!
    @IBOutlet var thirdTypeImageView: UIImageView!
    
    
    
    let movieList: [String] = ["노량", "더퍼스트슬램덩크", "밀수", "범죄도시3", "서울의봄", "스즈메의문단속",
                               "아바타물의길", "오펜하이머", "육사오", "콘크리트유토피아", "극한직업",
                               "도둑들", "명량", "베테랑", "부산행", "아바타", "알라딘", "암살"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTabTitleNavigationItem.title = "고래밥님"
        homeTabTitleNavigationItem.rightBarButtonItem?.title = "회원가입"
//        tabOneTitleLabel.text = "고래밥님"
//        tabOneTitleLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        
        homeImageView.image = UIImage(named: "노량")
        homeImageView.contentMode = .scaleAspectFill
        homeImageView.layer.cornerRadius = 15
        
        playButton.setTitle("재생", for: .normal)
        playButton.setImage(UIImage(named: "play"), for: .normal)
        playButton.backgroundColor = .white
        playButton.tintColor = .black
        playButton.layer.cornerRadius = 5
        
        myListButton.setTitle("+ 내가 찜한 리스트", for: .normal)
        myListButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        myListButton.backgroundColor = .darkGray
        myListButton.tintColor = .white
        myListButton.layer.cornerRadius = 5
        
        contentOneImageView.image = UIImage(named: "밀수")
        contentOneImageView.contentMode = .scaleAspectFill
        contentOneImageView.layer.cornerRadius = 5
        
        contentTwoImageView.image = UIImage(named: "범죄도시3")
        contentTwoImageView.contentMode = .scaleAspectFill
        contentTwoImageView.layer.cornerRadius = 5
        
        contentThreeImageView.image = UIImage(named: "육사오")
        contentThreeImageView.contentMode = .scaleAspectFill
        contentThreeImageView.layer.cornerRadius = 5
        
        firstCornerImageView.image = .top10Badge
        firstCornerImageView.contentMode = .scaleAspectFill
        secondCornerImageView.contentMode = .scaleAspectFill
        thirdCornerImageView.contentMode = .scaleAspectFill
        
        firstTypeImageView.image = .새로운에피소드
        firstTypeImageView.contentMode = .scaleAspectFill
        secondTypeImageView.contentMode = .scaleAspectFill
        thirdTypeImageView.contentMode = .scaleAspectFill
        
    }
    
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        print("play button tapped")
        let movie1 = movieList.randomElement() ?? ""
        let movie2 = movieList.randomElement() ?? ""
        let movie3 = movieList.randomElement() ?? ""
        let movie4 = movieList.randomElement() ?? ""
        
        guard Set([movie1, movie2, movie3, movie4]).count == 4 else { return }
        
        homeImageView.image = UIImage(named: movie1)
        contentOneImageView.image = UIImage(named: movie2)
        contentTwoImageView.image = UIImage(named: movie3)
        contentThreeImageView.image = UIImage(named: movie4)
        
        firstCornerImageView.image = isTop10.randomElement() ?? nil
        secondCornerImageView.image = isTop10.randomElement() ?? nil
        thirdCornerImageView.image = isTop10.randomElement() ?? nil
        
        firstTypeImageView.image = bottomMovieType.randomElement() ?? nil
        secondTypeImageView.image = bottomMovieType.randomElement() ?? nil
        thirdTypeImageView.image = bottomMovieType.randomElement() ?? nil
                
        
    }
    
    let isTop10: [UIImage?] = [.top10Badge, nil, nil, nil]
    let bottomMovieType: [UIImage?] = [.새로운에피소드, .지금시청하기, nil]
    
    
    @IBAction func myListButtonTapped(_ sender: UIButton) {
        print("list button tapped")
        
    }
    
    
    

}
