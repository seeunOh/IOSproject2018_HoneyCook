//
//  JorimListViewController.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 7..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import UIKit

class JorimListViewController: UIViewController {
    
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
    private let images = ["godungajorimB","dakjorimB","pyeonyoukB","komakzzimB","galbizzimB"]
    var temp: [String] = []
    var state: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoriteSwitch.isOn = state
    
        // Do any additional setup after loading the view.
        if num == 0 {
            foodview.image = UIImage(named: images[0])
            timeLabel.text = "40분"
            needLabel.text = "(4인분) 고등어2마리, 묵은지1/4포기, 양파1/2개, 감자2개, 대파1대, 홍고추1/2개, 청양고추1개, 다시마멸치육수2컵, 맛술2큰술, 소금두꼬집, 후추약간  //양념장재료: 김치국물1/2컵, 고춧가루2큰술, 맛술2큰술, 설탕1/2큰술, 다진마늘1큰술, 간장1작은술, 생강가루1/4작은술, 후추약간"
            explainLabel.text = "1. 고등어는 머리,꼬리,내장,지느러미를 제거한후 물에 깨끗이 씻어주세요. 물기를 제거하고 먹기좋은크기로 잘라 맛술과 소금,후추를 뿌려 10분정도 밑간을 해주세요."
            explainLabel2.text = "2. 묵은지는 소를 털어내 밑동부분을 잘라내고, 감자는 큼직하게 썰어주세요. 양파는 굵게 채를 썰고 대파,홍고추,청양고추는 어슷하게 썰어주세요."
            explainLabel3.text = "3. 냄비에 묵은지와 다시마멸치육수를 넣고 8분정도 끓여주세요."
            explainLabel4.text = "4. 고등어와 감자,양파,양념장을 넣은후 뚜껑을 열고 강불에서 15분정도 끓여주세요."
            explainLabel5.text = "5. 불을 중불로 줄인후 대파,홍고추,청양고추를 넣고 2분정도 더 끓여주세요."
        }
        else if num == 1 {
            foodview.image = UIImage(named: images[1])
            timeLabel.text = "40분"
            needLabel.text = "(2인분) 닭고기300g, 고구마2개, 펑양고추1/2개, 대파1대. //밑간: 청주1큰술, 다진마늘1/큰술, 생강즙약간, 후춧가루약간  //양념장: 물5큰술, 진간장3큰술, 올리고당2큰술, 청주1큰술, 생강즙약간, 참기름약간, 통깨약간 "
            explainLabel.text = "1. 닭고기는 흐르는물에 씻은 후 불에 담가 밑간재료와 버무려 20분정도 재워주세요. 고구마는 깨긋이 씻어 껍질을 벗긴 후 한입크기로 썰어주세요."
            explainLabel2.text = "2. 그릇에 약념장재료를 섞어주세요."
            explainLabel3.text = "3. 냄비에 1의 고구마와 닭고기를 넣고 재료가 잠길정도로 물을 부은후 끓여주세요. 닭과 고구마가 익으면 물을 버려주세요."
            explainLabel4.text = "4. 냄비에 3의 닭고기와 고구마, 2의 양념장과 청양고추를 넣고 졸여주세요. 대파를3cmㅊ크기로 썰어 넣은 후 조금 더 익혀주세요."
            explainLabel5.text = "5. 완성된 요리를 그릇에 담아 마무리해주세요."
        }
        else if num == 2 {
            foodview.image = UIImage(named: images[2])
            timeLabel.text = "60분"
            needLabel.text = "(2인분) 통삼겹살400g, 통후추3g, 월계수잎2장, 조리용 술2큰술, 취청오이60g, 영양부추75g, 홍고추15g  //돼지고기간장소스:간장1큰술,레드와인1작은술, 물엿1½작은술,고추기름1작은술, 홀그레인머스타드1작은술  /부추양념장: 배즙1½작은술, 설탕1작은술, 식초1½작은술, 고춧가루1작은술, 간마늘½작은술, 통깨1작은술, 소금약간, 멸치액젓½작은술"
            explainLabel.text = "1. 냄비에 통삼겹살이 잠길 만큼 물을 넣고 끓인 후 통삼겹살, 월계수잎, 통후추, 조리용 술을 넣고 뚜껑을 덮어 중불에서 40분간 삶아 주세요."
            explainLabel2.text = "2. 오이와 영양부추, 홍고추는 6cm 길이로 채썰어 주세요."
            explainLabel3.text = "3. 삶은 통삼겹살을 물기를 제거하고 기름을 두르지 않은 팬에 중불에서 돌려 가며 노릇하게 구워주세요."
            explainLabel4.text = "4. 통삼겹을 굽던 팬에 삼겹살 양념장을 넣고 중약불에서 3-4분간 조리듯이 구운 후 도마에 덜어 먹기 좋게 잘라주세요."
            explainLabel5.text = "5. 영양부추, 오이, 홍고추, 영양부추 양념장을 버무려 주세요."
        }
        else if num == 3 {
            foodview.image = UIImage(named: images[3])
            timeLabel.text = "30분"
            needLabel.text = "(2인분) 꼬막500g, 홍고추1개,청고추1개,실파2대,청주2큰술,깨약간  //양념장재료: 간장3큰술,맛술2큰술,올리고당1큰술,고춧가루1/2큰술,다진마늘1/2큰술,참기름1/2큰술,후추약간"
            explainLabel.text = "1.해감한 꼬막은 깨끗이 비벼 씻어주세요. 끓는 물에 청주를 조금 넣어 온도를 떨어뜨린 다음, 꼬막을 넣고 한쪽 방향으로 저어주면서 삶다가 입이 벌어지기 시작하면 건져주세요."
            explainLabel2.text = "2. 꼬막은 한쪽 껍데기만 떼어내주세요."
            explainLabel3.text = "3. 홍고추와 청고추는 잘게 다지고, 실파는 송송 썰어 양념장 재료에 넣고 섞어주세요."
            explainLabel4.text = "4. 접시에 한쪽 껍데기가 붙은 꼬막을 담고, 양념장을 고루 얹은 후 깨를 뿌려주세요."
            explainLabel5.text = " "
        }
        else if num == 4 {
            foodview.image = UIImage(named: images[4])
            timeLabel.text = "100분"
            needLabel.text = "(4인분)쇠고기 갈비1kg,무1/3개,표고버섯5개,당근1개,청양고추2개,대파1대,가래떡(작은 사이즈)2줄  //고기삶는재료:물2리터,대파1대,마늘5쪽,양파1개,건고추1개,통후추약간  //양념장재료:간장8큰술,고춧가루4큰술,맛술5큰술,올리고당3큰술,설탕3큰술,다진마늘1큰술,생강즙1/2큰술,후추약간"
            explainLabel.text = "1.갈비는 찬물에 1시간정도 담가 핏물을 빼고, 끓는 물에 살짝 데친 후 물에 헹궈 불순물을 제거해주세요."
            explainLabel2.text = "2. 냄비에 갈비와 고기 삶는 재료를 넣고 1시간정도 삶아 건져낸 후, 힘줄과 기름을 제거하고 양념장 재료와 섞어 버무려주세요."
            explainLabel3.text = "3.무와 당근은 한입크기로 자른 후 모서리를 둥글게 다듬고, 가래떡은 먹기 좋은 크기로 잘라주세요. 표고버섯은 3등분으로 자르고 청양고추와 대파는 어슷하게 썰어주세요."
            explainLabel4.text = "4. 냄비에 양념한 갈비와 갈비 삶은 국물 2컵, 무, 당근을 넣고 20분정도 끓여주세요."
            explainLabel5.text = " 5. 무와 당근이 익으면 표고버섯, 가래떡, 청양고추, 대파를 넣어 5분정도 더 끓여주세요."
        }
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
        
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
