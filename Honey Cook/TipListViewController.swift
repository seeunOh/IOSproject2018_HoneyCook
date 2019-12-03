//
//  TipListViewController.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 10..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import UIKit

class TipListViewController: UIViewController {
    
    @IBOutlet weak var explainLabel: UILabel!
    @IBOutlet weak var explainLabel2: UILabel!
    @IBOutlet weak var explainLabel3: UILabel!
    @IBOutlet weak var explainLabel4: UILabel!
    @IBOutlet weak var explainLabel5: UILabel!
    @IBOutlet weak var foodview: UIImageView!
    
    private let images = ["papper","onion","melon","paprica","potato","egg","steak","abocado"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if navigationItem.title == "고추송송썰기" {
            foodview.image = UIImage(named: images[0])
            explainLabel.text = "1. 고추의 꼭지를 제거하고, 젓가락을 넣어 돌려 씨를 털어 빼준다."
            explainLabel2.text = "2. 일정한 두께로 송송썬다."
            explainLabel3.text = "*고추씨가 들어가면 요리가 지저분해 지지만 매운맛을 원하면 넣어도된다."
            explainLabel4.text = "*활용요리: 무침류, 볶음요리 등"
            
        }
        else if navigationItem.title == "양파채썰기" {
            foodview.image = UIImage(named: images[1])
            explainLabel.text = "1. 양파의 양쪽 끝을 자른다."
            explainLabel2.text = "2. 양파를 절반으로 잘라준다."
            explainLabel3.text = "3. 양파를 원하는 두께로 썰어준다."
            explainLabel4.text = "*활용요리: 볶음료,조림류 등"
        }
        else if navigationItem.title == "수박예쁘게썰기" {
            foodview.image = UIImage(named: images[2])
            explainLabel.text = "1. 깨끗이 씻은 수박은 꼭지를 자르고, 밑부분도 평평하게 잘라주세요."
            explainLabel2.text = "2. 수박을 이등분하고, 이등분으로 자른 수박을 다시 반으로 썰어주세요."
            explainLabel3.text = "3. 수박 양쪽끝을 자르고, 수박껍질의 두께만큼 칼집을 길게 두번 넣어주세요."
            explainLabel4.text = "4. 수박껍질의 흰부분을 따라 손잡이부분만 남기고 껍질을 도려내주세요."
            explainLabel5.text = "5. 일정한 두께의 수박바모양으로 썰어주세요."
        }
        else if navigationItem.title == "파프리카채썰기" {
            foodview.image = UIImage(named: images[3])
            explainLabel.text = "1. 파프리카의 꼭지가 붙은 위쪽과 아랫부분을 잘라주세요."
            explainLabel2.text = "2. 안에 있는 씨부분과 흰색심지를 제거해 주세요."
            explainLabel3.text = "3. 씨를 빼낸 안쪽부분은 일정한 두께로 채썰어주세요."
            explainLabel4.text = "4. 앞뒤자른 자투리 파프리카는 크게썰거나 잘게다져서 사용 해주세요."
            explainLabel5.text = "*활용요리: 잡채,월남쌈,샐러드류,복음요리류 등"
            
        }
        else if navigationItem.title == "감자깍둑썰기" {
            foodview.image = UIImage(named: images[4])
            explainLabel.text = "1. 감자의 껍질을 벗긴다."
            explainLabel2.text = "2. 필요한 두께로 편썰기 한다."
            explainLabel3.text = "3. 편썰기한 감자를 가로,세로로 사각형이 되도록 썬다."
            explainLabel4.text = "*활용요리: 카레요리,된장찌개 등"
        }
        else if navigationItem.title == "달걀삶기" {
            foodview.image = UIImage(named: images[5])
            explainLabel.text = "1. 냄비에 물을 넣고 소금1큰술,식초1큰술,달걀을 넣은후 달걀이 동전크기만큼 보일정도로 물을 부어주세요."
            explainLabel2.text = "2. 달걀을 끓이다가 약간의 기포가 올라오면 달걀을 한쪽방향으로 살살저어주세요."
            explainLabel3.text = "3. 반숙으로 삶을때에는 10분, 완숙으로 삶을때는 15분 정도 삶아주세요."
            explainLabel4.text = "4. 삶은달걀은 찬물에 식힌 후 껍질을 까주세요."
            
        }
        else if navigationItem.title == "스테이크굽기" {
            foodview.image = UIImage(named: images[6])
            explainLabel.text = "1. 레어: 2분정도 굽기"
            explainLabel2.text = "2. 미디엄레어: 4분정도 굽기"
            explainLabel3.text = "3. 미디엄: 6분정도 굽기"
            explainLabel4.text = "4. 미디엄 웰던: 7분정도굽기"
            explainLabel5.text = "5. 웰던: 8분정도굽기"
            
        }
        else if navigationItem.title == "아보카도즐기기" {
            foodview.image = UIImage(named: images[7])
            explainLabel.text = "1. 아보카도는 꼭지가 마르지않고, 껍질이 검지않은 검은반점이 없는 통통한 것을 고른다."
            explainLabel2.text = "2. 실온에서 보관하는 후숙과일이다."
            explainLabel3.text = "3. 숙성시간을 단축하려면 사과와 함께 비닐봉투에 담아 실온에서 보관한다."
            explainLabel4.text = "*활용법: 샐러드나 김밥재료, 샌드위치속재료, 수프또는 크림에 이용"
        }
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
