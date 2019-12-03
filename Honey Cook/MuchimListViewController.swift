//
//  MuchimListViewController.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 7..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import UIKit

class MuchimListViewController: UIViewController {
    
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
    private let images = ["myulchibokemB","sigumchiB","mulsangcaeB","eggmaleeB","miyeokjulgiB"]
    var temp: [String] = []
    var state: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoriteSwitch.isOn = state
        
        if num == 0 {
            foodview.image = UIImage(named: images[0])
            timeLabel.text = "20분"
            needLabel.text = "(4인분) 잔멸치2컵, 모듬견과류2컵, 통깨약간  //간장양념재료: 올리고당3큰술, 식용유2큰술, 맛술2큰술, 참기름1큰술, 간장1/2큰술, 다진마늘1작은술, 후추약간"
            explainLabel.text = "1. 잔멸치는 굵은채에 담고 흔들어 잔가루를 재거해주세요."
            explainLabel2.text = "2. 마른팬에 잔멸치와 모듬견과류를 넣고, 중약불에서 5-6분정도 바삭하게 볶아주세요."
            explainLabel3.text = "3. 새로 달군팬에 간장양념을 넣고, 양념이 바글바글 끓으면 불을 약한불로 줄여주세요. 잔멸치과 모듬견과류를 넣고 빠르게 섞은 후, 불을 꺼주세요."
            explainLabel4.text = "4. 견과류멸치볶음에 통깨를 뿌려 마무리해주세요."
            explainLabel5.text = " "
        }
        else if num == 1 {
            foodview.image = UIImage(named: images[1])
            timeLabel.text = "15분"
            needLabel.text = "(4인분) 시금치200g, 올리브유2/3, 다진마늘1큰술, 소금1/2큰술, "
            explainLabel.text = "1. 끓는물에 소금을 1꼬집넣고 시금치 뿌리부분이 물을 향하게 든 뒤 10초정도 뿌리만 담가뒀다가 잎을 담가주세요. 잎이 부드러워지면 꺼내에 찬물에 씻어서 물기를 꽉 짜준 뒤 먹기좋은 5cm길이로 잘라둡니다."
            explainLabel2.text = "2. 올리브유, 다진마늘, 소금, 후추를 그릇에 넣고 섞어주세요."
            explainLabel3.text = "3. 시금치와 4번의 소스를 버무려주세요."
            explainLabel4.text = "4. 완성된 요리를 그릇에 담아 마무리하세요."
            explainLabel5.text = " "
        }
        else if num == 2 {
            foodview.image = UIImage(named: images[2])
            timeLabel.text = "20분"
            needLabel.text = "(3인분) 무500g, 고춧가루3큰술, 실파1대, 통깨약간  //양념재료: 멸치액젓1큰술, 식초1큰술, 설탕1큰술, 다진파1큰술, 다진마늘1큰술, 소금1작은술, 생강가루1/4작은술"
            explainLabel.text = "1. 무는 껍질을 벗기고, 7센치정도길이로 썰어주세요. 토막낸 무를 세워 동그라미면이 위로향하게 놓고, 0.3센치정도 두께로 편을 썰어주세요. 편으로 썬 무를 채썰어주세요."
            explainLabel2.text = "2. 볼에 무채와 고춧가루를 넣고 버무려 10분정도 고춧가루물을 들여주세요."
            explainLabel3.text = "3. 고춧가루에 물들인 무채에 양념재료를 넣고 조물조물 버무려주세요."
            explainLabel4.text = "4. 접시에 무생채를 담고, 송송 썬 실파와 통깨를 뿌려주세요."
            explainLabel5.text = " "
            
        }
        else if num == 3 {
            foodview.image = UIImage(named: images[3])
            timeLabel.text = "25분"
            needLabel.text = "(2인분) 달걀5개, 당근1/4개, 실파3대, 식용유약간  //달걀물: 맛술1큰술, 소금1/4작은술, 후출가루약간"
            explainLabel.text = "1. 당근과 싪는 잘게 자르고, 보ㅛㄹ에 달걀을 넣고 젓가락을 저어 푼 후 야채와 달걀물 재료를 넣고 섞어주세요."
            explainLabel2.text = "2. 중약불로 달군팬에 약간의 식용유를 두르고, 달걀물을 국자로 떠서 넣은 후, 윗면이 반쯤 익으면 달걀을 돌돌 말아주세요."
            explainLabel3.text = "3. 말아진 달걀을 팬 위쪽으로 밀어좋고, 달걀물을 다시부어 3회정도 같은 방법으로 반복해서 달걀을 말아주세요."
            explainLabel4.text = "4. 달걀말이를 먹기좋은 크기로 썰어주세요."
            explainLabel5.text = "5. 알맞은 그릇에 담아 맛잇게 즐겨주세요."
        }
        else if num == 4 {
            foodview.image = UIImage(named: images[4])
            timeLabel.text = "25분"
            needLabel.text = "(4인분) 염장미역줄기350g, 당근1/3개, 양파1/4개, 다진마늘1/2큰술, 통깨약간  //양념재료: 맛술2큰술, 간장1큰술, 참기름1큰술, 소금1/4작은술, 후추약간"
            explainLabel.text = "1. 미역줄기는 흐르는 물에 여러번 헹구고 찬물에 20분정도담가 소금끼를 빼주세요. 미역줄기를 끓는 물에 넣고 3분정도 데친후 찬물에 헹궈 물기를 빼주세요."
            explainLabel2.text = "2. 미역줄기는 6센치길이로 먹기좋게 자르고, 굵은줄기는 손으로 찢어주세요. 당근과 양파는 곱게 채를 썰어주세요."
            explainLabel3.text = "3. 팬에 식용유를 두르고 다진마늘을 볶다가 양파와 당근,미역줄기를 넣어주세요. 재료들이 부드러워질때까지 볶다가 양념재료를 넣어 볶아주세요."
            explainLabel4.text = "4. 접시에 미역줄기볶음을 담고 통깨를 뿌려주세요."
            explainLabel5.text = " "
        }

        
        // Do any additional setup after loading the view.
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
    }
    */

}
