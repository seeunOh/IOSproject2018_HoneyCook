//
//  GookListViewController.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 2..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import UIKit

class GookListViewController: UIViewController {
    
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
    private let images = ["kimcizzigaeB","baekhaptangB","bokemtangB","mutgookB","miyeokgookB"]
    var temp: [String] = []
    var state: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        favoriteSwitch.isOn = state
        
        if num == 0{
            foodview.image = UIImage(named: images[0])
            timeLabel.text = "45분"
            needLabel.text = "(3~4인분) 목살300g, 배추김치1/4포기, 두부1/3모, 대파1/2대  //국물재료: 다시마멸치물3컵, 고춧가루1큰술, 김치국물1/2컵  //양념재료: 맛술2큰술, 다진마늘1작은술, 소금1/4작은술, 생강가루약간, 후추약간"
            explainLabel.text = "1. 돼지고기는 먹기좋게 썰어 고기양념에 밑간하여 15분 정도 재워주세요."
            explainLabel2.text = "2. 배추김치와 두부는 먹기좋게 썰고, 대파는 어슷하게 썰어 주세요."
            explainLabel3.text = "3. 냄비에 약간의 기름을 두르고 돼지고기를 넣어 2분정도 볶아 표면이 살짝 익으면, 김치를 넣어 3~4분정도 더 볶아준 후 국물재료를 넣어 15분정도 끓여주세요."
            explainLabel4.text = "4. 두부와 대파를 넣고 2분정도 더 끓이다가 불을 꺼주세요."
            explainLabel5.text = "5. 기호에따라 소금으로 간을 조절해 맛있게 즐겨주세요."

        }
            
            //if navigationItem.title == "김치찌개"
        else if navigationItem.title == "백합탕" {
            foodview.image = UIImage(named: images[1])
            timeLabel.text = "30분"
            needLabel.text = "(3~4인분) 백합, 홍고추, 청양고추, 물, 소금"
            explainLabel.text = "1. 해감한 백합은 솔을 이용하여 깨끗하게 닦고 물에 여러번 헹궈주세요."
            explainLabel2.text = "2. 끓는 물에 손질한 백합을 넣고 두껑을 연 채로 끓여주세요. 뽀얀 조개국물이 우러나오고 백합이 입을 벌리면 간을 보고 취향에 따라 소금을 더 넣으세요."
            explainLabel3.text = "3. 홍고추와 청양고추를 넣고 한소끔 더 끓여주세요."
            explainLabel4.text = "4. 완성된 요리를 그릇에 담아 마무리하세요."
            explainLabel5.text = " "
            

        }
        else if navigationItem.title == "닭볶음탕" {
            foodview.image = UIImage(named: images[2])
            timeLabel.text = "50분"
            needLabel.text = "(2인분기준) 닭1마리, 감자3개, 양파1개, 당근1/2개, 대파1대, 청고추1개, 물3컵 //양념재료: 간장5큰술, 고춧가루4큰술, 맛술3큰술, 설탕2큰술, 다진마늘2큰술, 고추장1큰술, 참기름1큰술, 후추약간"
            explainLabel.text = "1. 적당한 크기로 자른 닮은 깨끗이 씻은 후, 끓는물에 살짝 데치고 찬물에 씻어 불순물을 제거 해 주세요."
            explainLabel2.text = "2. 감자와 당근,양파는 큼직하게 썰고 대파와 청고추는 어슷하게 썰어주세요. 볼에 양념재료를 넣고 섞어주세요."
            explainLabel3.text = "3. 냄비에 데친 닭고기와 물,감자,당근,양념재료를 넣어 30분 정도 센불에서 끓여주세요.(감자크기에 따라 조리시간을 조절해주세요.)"
            explainLabel4.text = "4. 닭이 부드럽게 익으면 중불로 줄여 양파를 넣고 5분정도 끓이다가, 대파와 청고추를 넣어 2분정도 더 끓인후 불을 꺼주세요."
            explainLabel5.text = "5. 마지막에 약간의 소금을 가감해서 간을 맞추고, 따듯할때 맛있게 즐겨주세요."
   
        }
        else if navigationItem.title == "소고기뭇국" {
            foodview.image = UIImage(named: images[3])
            timeLabel.text = "45분"
            needLabel.text = "(4인분) 쇠고기200g, 무1/4개, 대파1/2대, 다시마멸치육수6컵  //소고기밑간재료: 국간장1/2큰술, 다진마늘1작은술, 참기름1작은술, 소금약간, 후추약간"
            explainLabel.text = "1. 소고기는 찬물에 10분정도 담가 핏물을 빼고, 먹기좋은 크기로 잘ㄹ라주세요. 그리고 밑간재료에 10분정도 재워주세요."
            explainLabel2.text = "2. 무는 사방3센치로 나박썰기하고, 대파는 반으로잘라 4센치길이로 썰어주세요."
            explainLabel3.text = "3. 냄비에 밑간한 소고기를 넣어 2분정도 볶다가 다시멸치육수와 무를 넣고, 끓어오르면 중약불로 줄여 10-12분정도 무가 익을때가지 끓여주세요."
            explainLabel4.text = "4. 무가 익으면 대파와 국물양념재료를 넣고 2분정도 끓여주세요."
            explainLabel5.text = "5. 따듯하게 밥과 함께 즐겨주세요."
   
        }
        else if navigationItem.title == "소고기미역국" {
            foodview.image = UIImage(named: images[4])
            timeLabel.text = "100분"
            needLabel.text = "(4인분) 건미역20g, 소고기200g, 참기름1큰술  //소고기밑간재료: 국간장1/2큰술, 다진마늘1작은술, 참기름1작은술, 소금약간, 후추약간  //국물양념: 국간장1큰술, 참치액젓1큰술, 다진마늘1/2큰술, 소금1/2작은술, 후추약간"
            explainLabel.text = "1. 불린미역은 먹기좋은크기로 잘라주세요.(찬물에 건미역을 넣고 20분정도 불리고 깨끗하게 헹군후 사용해주세요."
            explainLabel2.text = "2. 쇠고기는 찬물에 20분정도 담가 핏물을 빼고, 냄비에 물12컵과 통마늘3쪽, 통후추10알을 넣고 40분정도 끓여주세요."
            explainLabel3.text = "3. 삶은 소고기는 결대로 찢은후 밑간재료를 넣어 밑간을하고, 고기육수는 채에 걸러주세요."
            explainLabel4.text = "4. 냄비에 참기름을 두르고 밑간을 한 소고기와 미역을 넣어 2-3분정도 볶아주세요."
            explainLabel5.text = "5.냄비에 고기육수를 6컵을 넣고, 끓어오르면 중약불로 줄여 12분정도 끓이다가 국물양념재료를 넣어 간을 맞춰 3분정도 더 끓여주세요."
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
    
    
/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "gookfood" {
    
        }
        
    }
 */
    

}
