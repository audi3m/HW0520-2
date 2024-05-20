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
    
    @IBOutlet var contentImageView: [UIImageView]!
    
    @IBOutlet var top10Images: [UIImageView]!
    
    @IBOutlet var movieSortImageView: [UIImageView]!
     
    
    let movieList: [String] = ["노량", "더퍼스트슬램덩크", "밀수", "범죄도시3", "서울의봄", "스즈메의문단속",
                               "아바타물의길", "오펜하이머", "육사오", "콘크리트유토피아", "극한직업",
                               "도둑들", "명량", "베테랑", "부산행", "아바타", "알라딘", "암살"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTabTitleNavigationItem.title = "고래밥님"
        homeTabTitleNavigationItem.rightBarButtonItem?.title = "회원가입"
        
        setInitialMoviesImage()
        
        setButtons()
         
        setContentMode()
        top10Images[0].image = .top10Badge
        movieSortImageView[0].image = .새로운에피소드
        
    }
    
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        print("play button tapped")
        
        shuffleMoviesImage()
        
        for i in 0...2 {
            top10Images[i].image = isTop10.randomElement() ?? nil
            movieSortImageView[i].image = bottomMovieType.randomElement() ?? nil
        }
        
    }
    
    let isTop10: [UIImage?] = [.top10Badge, nil, nil, nil]
    let bottomMovieType: [UIImage?] = [.새로운에피소드, .지금시청하기, nil, nil]
    
    
    @IBAction func myListButtonTapped(_ sender: UIButton) {
        print("list button tapped")
        
    }
    
    func setContentMode() {
        for i in 0...2 {
            top10Images[i].contentMode = .scaleAspectFill
            movieSortImageView[i].contentMode = .scaleAspectFill
        }
    }
    
    
    func setInitialMoviesImage() {
        homeImageView.image = UIImage(named: "암살")
        homeImageView.contentMode = .scaleAspectFill
        homeImageView.layer.cornerRadius = 15
        
        for i in 0...2 {
            contentImageView[i].image = UIImage(named: movieList[i])
            contentImageView[i].contentMode = .scaleAspectFill
            contentImageView[i].layer.cornerRadius = 5
        }
    }
    
    func shuffleMoviesImage() {
        let shuffled = movieList.shuffled()
        homeImageView.image = UIImage(named: shuffled[0])
        contentImageView[0].image = UIImage(named: shuffled[1])
        contentImageView[1].image = UIImage(named: shuffled[2])
        contentImageView[2].image = UIImage(named: shuffled[3])
    }
    
    func setButtons() {
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
    }
    

}
