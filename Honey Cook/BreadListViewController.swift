//
//  BreadListViewController.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 7..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import UIKit

class BreadListViewController: UIViewController {

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
    private let images = ["eggsandB","photatosandB","biscuitB","saladB","donutB"]
    var temp: [String] = []
    var state: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoriteSwitch.isOn = state
        
        // Do any additional setup after loading the view.
        if num == 0 {
            foodview.image = UIImage(named: images[0])
            timeLabel.text = "25분"
            needLabel.text = "(2개) 곡물식빵4장,달걀3개,토마토1개,적양파 또는 양파1/4개,양상추6장,오이피클3큰술 (50g),무순한 줌,소금약간  //소스:마요네즈3큰술,머스터드1/2큰술,소금두 꼬집,후추약간 //스프레드:마요네즈1 ½큰술,머스터드1/2큰술"
            explainLabel.text = "1. 냄비에 물과 약간의 소금을 넣고 달걀을 15분간 삶아서 바로 찬물에 넣어 식힌 후 껍질을 벗겨주세요. 토마토는 0.7cm 두께로 둥글게 썰고 키친타월로 물기를 제거해주세요."
            explainLabel2.text = "2. 적양파는 얇게 채 썰고 양상추는 한 장씩 뜯어서 찬물에 담갔다가 물기를 뺍니다. 피클은 잘게 다져서 준비해주세요."
            explainLabel3.text = "3. 달걀흰자는 굵게 다지고, 노른자는 체에 곱게 내려주세요. 볼에 달걀, 피클, 소스 재료를 넣고 잘 섞어주세요."
            explainLabel4.text = "4. 스프레드 재료를 섞어 빵 한 쪽에 바른 후 양상추-STEP3-적양파-토마토-무순 순으로 올려주세요. 빵으로 덮고 가볍게 누른 후 반으로 잘라주세요."
            explainLabel5.text = "5. 완성된 요리를 그릇에 담아 마무리해주세요."
        }
        else if num == 1 {
            foodview.image = UIImage(named: images[1])
            timeLabel.text = "40분"
            needLabel.text = "(2개) 감자2개,슬라이스 햄6장,오이1/2개,양파1/2개,로메인3장,곡물식빵6장,버터1큰술,소금약간  //소스재료:마요네즈5큰술,머스터드1큰술,올리고당1큰술,소금두꼬집,후추약간 //스프레드:마요네즈1 ½큰술,머스터드1/2큰술"
            explainLabel.text = "1. 감자를 껍질 채 씻어 4등분하고, 김이 오른 찜통에 감자가 포슬거리도록 20분 정도 쪄주세요. 찐감자는 껍질을 벗겨 뜨거울 때 볼에 넣어 으깨고, 버터 1큰술과 약간의 소금, 후추를 더해 섞어주세요."
            explainLabel2.text = "2. 오이는 반달모양으로 썰고, 양파는 채썰어 소금물(물 1컵, 소금 1큰술, 설탕 1큰술)에 10분정도 절였다가 물기를 제거해주세요"
            explainLabel3.text = "3. 볼에 감자와 오이, 양파, 소스를 넣어 섞어 감자샐러드를 만들어주세요"
            explainLabel4.text = "4. 빵(스프레드)-감자샐러드-햄슬라이스-로메인-빵(스프레드)을 순서대로 올리고 가볍게 누른 후 잘라주세요."
            explainLabel5.text = "5. 완성된 요리를 그릇에 담아 마무리해주세요."
        }
        else if num == 2 {
            foodview.image = UIImage(named: images[2])
            timeLabel.text = "55분"
            needLabel.text = "(2개) 밀가루 (박력분)200g,베이킹파우더8g,설탕27g,소금2g,무염버터80g,우유110mL"
            explainLabel.text = "1. 오븐은 180도로 미리 예열해주세요."
            explainLabel2.text = "2. 밀가루와 베이킹파우더를 체에 쳐서 볼에 넣고 설탕, 소금을 섞어주세요. 차가운 상태의 버터를 올려 주걱 또는 스크래퍼로 잘게 자르며 섞어주세요."
            explainLabel3.text = "3. 밀가루의 색이 노랗게 되면 우유를 넣어서 잘 섞은 뒤 냉장고에서 30분간 휴지시킵니다."
            explainLabel4.text = "4. 팬 위에 유산지를 깔고 반죽을 적당한 크기로 떼어 올려주세요."
            explainLabel5.text = "5. 예열한 오븐에서 15~18분간 구워주세요."
        }
        else if num == 3 {
            foodview.image = UIImage(named: images[3])
            timeLabel.text = "25분"
            needLabel.text = "(2인분) 아보카도1개,달걀2개,잎채소(로메인, 치커리, 라디키오)약간씩,파마산치즈블럭약간,뮤즐리약간  //드레싱재료:올리브오일3큰술,레몬즙(또는 식초)2큰술,올리고당1큰술,다진양파1큰술,소금1/4작은술,후추약간,파슬리가루약간"
            explainLabel.text = "1. 냄비에 달걀과 달걀이 잠길만큼의 물을 넣은 후 약간의 소금, 식초를 넣고 반숙으로 10분 정도 삶아주세요. 삶은 달걀은 찬물에 담갔다가 껍질을 벗겨 주세요."
            explainLabel2.text = "2. 잎채소는 한입 크기로 썰어 찬물에 담가 깨끗이 씻은 후 물기를 제거해주세요. 볼에 드레싱재료를 넣고 섞어주세요."
            explainLabel3.text = "3. 아보카도는 반으로 가른 후, 씨를 빼고 껍질을 벗겨 한입크기로 잘라주세요."
            explainLabel4.text = "4. 접시에 잎채소와 아보카도, 삶은 달걀, 뮤즐리를 올리고 파마산치즈블럭을 갈아 뿌려주세요."
            explainLabel5.text = "5. 샐러드에 레몬드레싱을 곁들여 즐겨주세요."
            
        }
        else if num == 4 {
            foodview.image = UIImage(named: images[4])
            timeLabel.text = "30분"
            needLabel.text = "(9개) 두부1모(300g),핫케이크가루2컵,우유1~2큰술,슈가파우더(또는 설탕)약간,밀가루약간,식용유적당량"
            explainLabel.text = "1. 두부는 으깬 후 면포로 감싸 가볍게 물기를 짜주세요."
            explainLabel2.text = "2. 두부에 핫케이크가루를 넣은 후 잘 섞고 우유를 넣어 반죽의 농도를 조절해주세요."
            explainLabel3.text = "3. 도마에 밀가루를 뿌리고 손에 밀가루를 묻힌 후 반죽을 50g정도 떼어내어 동그랗게 모양을 잡아주세요. 반죽 중앙을 동그란 뚜껑으로 눌러 구멍을 내고 도넛모양을 만들어주세요."
            explainLabel4.text = "4. 150~160도로 기름을 약하게 달군 후, 도넛을 넣고 굴려가며 노릇하게 속이 익을 때까지 3~4분정도 튀겨주세요."
            explainLabel5.text = "5. 튀긴 도넛에 슈가파우더(또는 설탕)를 뿌려주세요."
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
