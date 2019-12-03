//
//  DrinkListViewController.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 7..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import UIKit

class DrinkListViewController: UIViewController {

    @IBOutlet weak var foodview: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var needLabel: UILabel!
    @IBOutlet weak var explainLabel: UILabel!
    @IBOutlet weak var explainLabel2: UILabel!
    @IBOutlet weak var explainLabel3: UILabel!
    @IBOutlet weak var explainLabel4: UILabel!
    @IBOutlet weak var explainLabel5: UILabel!
    @IBOutlet weak var favoriteSwitch: UISwitch!
    
    var num: Int!
    var itemName: String?
    private let images = ["lemonadeB","zaduB","lemonmohitoB","latteB","bangshowB"]
    var temp: [String] = []
    var state: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoriteSwitch.isOn = state
        
        // Do any additional setup after loading the view.
        if num == 0 {
            foodview.image = UIImage(named: images[0])
            timeLabel.text = "15분"
            needLabel.text = "(200ml)수박1/8통(600g),사이다1컵(200ml),레몬1개,얼음약간,민트약간"
            explainLabel.text = "1. 수박은 껍질과 씨를 제거하고 한입크기로 잘라주세요."
            explainLabel2.text = "2. 레몬은 반은 스퀴저로 즙을 짜고, 반은 슬라이스 해주세요."
            explainLabel3.text = "3. 믹서에 수박과 사이다, 레몬즙 1큰술을 넣고 갈아주세요."
            explainLabel4.text = "4. 잔에 수박레몬에이드를 따른 후 작게 간 얼음을 올리고, 동그랗게 파낸 수박과 레몬, 민트잎으로 장식해주세요."
            explainLabel5.text = " "
        }
        else if num == 1 {
            foodview.image = UIImage(named: images[1])
            timeLabel.text = "40분"
            needLabel.text = "(1L)자두15개(과육 1kg),흰설탕1kg,레몬3개,베이킹소다1/4컵"
            explainLabel.text = "1. 냄비에 찬물을 넣고 유리병을 거꾸로 담아 끓여주세요. 물이 끓기 시작하면 중약불로 줄여 2~3분 더 끓인 후 꺼내어 물기를 제거해주세요."
            explainLabel2.text = "2. 자두와 레몬은 베이킹소다에 비비고, 흐르는 물에 깨끗이 씻은 후 물기를 제거해 주세요."
            explainLabel3.text = "3. 자두는 반으로 갈라 꼭지와 씨를 제거하고 잘라주세요. 레몬 1개는 링으로 자르고, 나머지 2개는 레몬즙을 만들어주세요."
            explainLabel4.text = "4. 볼에 잘라 놓은 자두와 설탕, 링으로 자른 레몬, 레몬즙을 넣어 섞어주세요."
            explainLabel5.text = "5. 설탕이 녹으면 소독한 용기에 담고 뚜껑을 닫아주세요."
        }
        else if num == 2 {
            foodview.image = UIImage(named: images[2])
            timeLabel.text = "15분"
            needLabel.text = "애플민트10~15잎,레몬청5큰술,탄산수1컵,얼음5조각"
            explainLabel.text = "1. 애플민트는 차가운 물에 깨끗하게 씻어 물기를 제거해주세요. 컵에 애플민트 잎을 넣고 티스푼 등을 이용하여 향이 날 때까지 빻아주세요."
            explainLabel2.text = "2. 레몬청과 레몬청 안의 레몬 조각을 2~3조각을 함께 넣어주세요."
            explainLabel3.text = "3. 거품이 생기지 않도록 탄산수를 천천히 따라주고 애플민트 잎과 레몬 조각을 얹어서 완성해주세요."
            explainLabel4.text = " "
            explainLabel5.text = " "
        }
        else if num == 3 {
            foodview.image = UIImage(named: images[3])
            timeLabel.text = "15분"
            needLabel.text = "(2잔)곡물가루4큰술,우유2컵,꿀 또는 시럽2큰술"
            explainLabel.text = "1. 쉐이커 또는 믹서기에 우유와 곡물가루, 꿀을 넣고 섞어주세요."
            explainLabel2.text = "2. 볼에 우유 5큰술을 넣고 우유거품기로 거품을 만들어주세요."
            explainLabel3.text = "3. 잔에 곡물라떼를 담고, 우유거품 1큰술과 곡물가루를 뿌려주세요."
            explainLabel4.text = " "
            explainLabel5.text = " "
        }
        else if num == 4 {
            foodview.image = UIImage(named: images[4])
            timeLabel.text = "40분"
            needLabel.text = "레드와인1병,오렌지2개,베이킹소다약간,사과1개,레몬1개,정향5개,설탕2큰술,통계피1개"
            explainLabel.text = "1. 레몬과 오렌지는 베이킹소다로 문질러 껍질을 깨끗이 씻어주세요. 레몬, 오렌지, 사과를 둥근 모양으로 도톰하게 자릅니다. 오렌지 껍질과 흰 부분을 제거하면 쓴맛을 줄일 수 있어요."
            explainLabel2.text = "2. 냄비에 와인과 오렌지, 사과, 레몬, 계피, 정향, 설탕을 넣고 끓기 시작하면 약한 불로 줄여 25~30분간 더 끓여주세요."
            explainLabel3.text = "3. 끓인 뱅쇼는 내용물은 건져내어 음료만 병에 담아 드시고 10일정도 냉장보관 가능해요. 드실때는 따뜻하게 데워서 드시면 좋아요. 기호에 따라 설탕이나 과일주스로 당도를 조절해주셔도 돼요."
            explainLabel4.text = " "
            explainLabel5.text = " "
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let tabbar = tabBarController as! BaseTabBarController
        let favoritesList = FavoritesList.sharedFavoritesList
        favoritesList.favorites = tabbar.favorites
        temp = tabbar.favorites
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let tabbar = tabBarController as! BaseTabBarController
        //tabbar.favorites = temp
        
        let favoritesList = FavoritesList.sharedFavoritesList
        tabbar.favorites = favoritesList.favorites
        
    }
    
    @IBAction func toggleFavorite(_ sender: UISwitch) {
        let favoritesList = FavoritesList.sharedFavoritesList
        if sender.isOn{
            favoritesList.addFavor(food: navigationItem.title!)
            //temp.append(navigationItem.title!)
        }
        else {
            favoritesList.removeFavor(food: navigationItem.title!)
            //temp.remove(at: num)
        }
    }
    

}
