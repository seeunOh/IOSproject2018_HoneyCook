//
//  FavoriteListViewController.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 10..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import UIKit

class FavoriteListViewController: UIViewController {
    
    @IBOutlet weak var foodview: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var needLabel: UILabel!
    @IBOutlet weak var explainLabel: UILabel!
    @IBOutlet weak var explainLabel2: UILabel!
    @IBOutlet weak var explainLabel3: UILabel!
    @IBOutlet weak var explainLabel4: UILabel!
    @IBOutlet weak var explainLabel5: UILabel!
    
    var num: Int!
    private let images = ["kimcizzigaeB","baekhaptangB","bokemtangB","mutgookB","miyeokgookB","godungajorimB","dakjorimB","pyeonyoukB","komakzzimB","galbizzimB","myulchibokemB","sigumchiB","mulsangcaeB","eggmaleeB","miyeokjulgiB","eggsandB","photatosandB","biscuitB","saladB","donutB","lemonadeB","zaduB","lemonmohitoB","latteB","bangshowB"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if navigationItem.title == "김치찌개" {
            foodview.image = UIImage(named: images[0])
            timeLabel.text = "45분"
            needLabel.text = "(3~4인분) 목살300g, 배추김치1/4포기, 두부1/3모, 대파1/2대  //국물재료: 다시마멸치물3컵, 고춧가루1큰술, 김치국물1/2컵  //양념재료: 맛술2큰술, 다진마늘1작은술, 소금1/4작은술, 생강가루약간, 후추약간"
            explainLabel.text = "1. 돼지고기는 먹기좋게 썰어 고기양념에 밑간하여 15분 정도 재워주세요."
            explainLabel2.text = "2. 배추김치와 두부는 먹기좋게 썰고, 대파는 어슷하게 썰어 주세요."
            explainLabel3.text = "3. 냄비에 약간의 기름을 두르고 돼지고기를 넣어 2분정도 볶아 표면이 살짝 익으면, 김치를 넣어 3~4분정도 더 볶아준 후 국물재료를 넣어 15분정도 끓여주세요."
            explainLabel4.text = "4. 두부와 대파를 넣고 2분정도 더 끓이다가 불을 꺼주세요."
            explainLabel5.text = "5. 기호에따라 소금으로 간을 조절해 맛있게 즐겨주세요."
            
        }
        
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
            explainLabel5.text = "따듯하게 밥과 함께 즐겨주세요."
            
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
        
        
        else if navigationItem.title == "묵은지고등어조림" {
            foodview.image = UIImage(named: images[5])
            timeLabel.text = "40분"
            needLabel.text = "(4인분) 고등어2마리, 묵은지1/4포기, 양파1/2개, 감자2개, 대파1대, 홍고추1/2개, 청양고추1개, 다시마멸치육수2컵, 맛술2큰술, 소금두꼬집, 후추약간  //양념장재료: 김치국물1/2컵, 고춧가루2큰술, 맛술2큰술, 설탕1/2큰술, 다진마늘1큰술, 간장1작은술, 생강가루1/4작은술, 후추약간"
            explainLabel.text = "1. 고등어는 머리,꼬리,내장,지느러미를 제거한후 물에 깨끗이 씻어주세요. 물기를 제거하고 먹기좋은크기로 잘라 맛술과 소금,후추를 뿌려 10분정도 밑간을 해주세요."
            explainLabel2.text = "2. 묵은지는 소를 털어내 밑동부분을 잘라내고, 감자는 큼직하게 썰어주세요. 양파는 굵게 채를 썰고 대파,홍고추,청양고추는 어슷하게 썰어주세요."
            explainLabel3.text = "3. 냄비에 묵은지와 다시마멸치육수를 넣고 8분정도 끓여주세요."
            explainLabel4.text = "4. 고등어와 감자,양파,양념장을 넣은후 뚜껑을 열고 강불에서 15분정도 끓여주세요."
            explainLabel5.text = "5. 불을 중불로 줄인후 대파,홍고추,청양고추를 넣고 2분정도 더 끓여주세요."
        }
        else if navigationItem.title == "닭간장조림" {
            foodview.image = UIImage(named: images[6])
            timeLabel.text = "40분"
            needLabel.text = "(2인분) 닭고기300g, 고구마2개, 펑양고추1/2개, 대파1대. //밑간: 청주1큰술, 다진마늘1/큰술, 생강즙약간, 후춧가루약간  //양념장: 물5큰술, 진간장3큰술, 올리고당2큰술, 청주1큰술, 생강즙약간, 참기름약간, 통깨약간 "
            explainLabel.text = "1. 닭고기는 흐르는물에 씻은 후 불에 담가 밑간재료와 버무려 20분정도 재워주세요. 고구마는 깨긋이 씻어 껍질을 벗긴 후 한입크기로 썰어주세요."
            explainLabel2.text = "2. 그릇에 약념장재료를 섞어주세요."
            explainLabel3.text = "3. 냄비에 1의 고구마와 닭고기를 넣고 재료가 잠길정도로 물을 부은후 끓여주세요. 닭과 고구마가 익으면 물을 버려주세요."
            explainLabel4.text = "4. 냄비에 3의 닭고기와 고구마, 2의 양념장과 청양고추를 넣고 졸여주세요. 대파를3cmㅊ크기로 썰어 넣은 후 조금 더 익혀주세요."
            explainLabel5.text = "5. 완성된 요리를 그릇에 담아 마무리해주세요."
        }
        else if navigationItem.title == "돼지고기편육" {
            foodview.image = UIImage(named: images[7])
            timeLabel.text = "60분"
            needLabel.text = "(2인분) 통삼겹살400g, 통후추3g, 월계수잎2장, 조리용 술2큰술, 취청오이60g, 영양부추75g, 홍고추15g  //돼지고기간장소스:간장1큰술,레드와인1작은술, 물엿1½작은술,고추기름1작은술, 홀그레인머스타드1작은술  /부추양념장: 배즙1½작은술, 설탕1작은술, 식초1½작은술, 고춧가루1작은술, 간마늘½작은술, 통깨1작은술, 소금약간, 멸치액젓½작은술"
            explainLabel.text = "1. 냄비에 통삼겹살이 잠길 만큼 물을 넣고 끓인 후 통삼겹살, 월계수잎, 통후추, 조리용 술을 넣고 뚜껑을 덮어 중불에서 40분간 삶아 주세요."
            explainLabel2.text = "2. 오이와 영양부추, 홍고추는 6cm 길이로 채썰어 주세요."
            explainLabel3.text = "3. 삶은 통삼겹살을 물기를 제거하고 기름을 두르지 않은 팬에 중불에서 돌려 가며 노릇하게 구워주세요."
            explainLabel4.text = "4. 통삼겹을 굽던 팬에 삼겹살 양념장을 넣고 중약불에서 3-4분간 조리듯이 구운 후 도마에 덜어 먹기 좋게 잘라주세요."
            explainLabel5.text = "5. 영양부추, 오이, 홍고추, 영양부추 양념장을 버무려 주세요."
        }
        else if navigationItem.title == "꼬막찜" {
            foodview.image = UIImage(named: images[8])
            timeLabel.text = "30분"
            needLabel.text = "(2인분) 꼬막500g, 홍고추1개,청고추1개,실파2대,청주2큰술,깨약간  //양념장재료: 간장3큰술,맛술2큰술,올리고당1큰술,고춧가루1/2큰술,다진마늘1/2큰술,참기름1/2큰술,후추약간"
            explainLabel.text = "1.해감한 꼬막은 깨끗이 비벼 씻어주세요. 끓는 물에 청주를 조금 넣어 온도를 떨어뜨린 다음, 꼬막을 넣고 한쪽 방향으로 저어주면서 삶다가 입이 벌어지기 시작하면 건져주세요."
            explainLabel2.text = "2. 꼬막은 한쪽 껍데기만 떼어내주세요."
            explainLabel3.text = "3. 홍고추와 청고추는 잘게 다지고, 실파는 송송 썰어 양념장 재료에 넣고 섞어주세요."
            explainLabel4.text = "4. 접시에 한쪽 껍데기가 붙은 꼬막을 담고, 양념장을 고루 얹은 후 깨를 뿌려주세요."
            explainLabel5.text = " "
        }
        else if navigationItem.title == "매운갈비찜" {
            foodview.image = UIImage(named: images[9])
            timeLabel.text = "100분"
            needLabel.text = "(4인분)쇠고기 갈비1kg,무1/3개,표고버섯5개,당근1개,청양고추2개,대파1대,가래떡(작은 사이즈)2줄  //고기삶는재료:물2리터,대파1대,마늘5쪽,양파1개,건고추1개,통후추약간  //양념장재료:간장8큰술,고춧가루4큰술,맛술5큰술,올리고당3큰술,설탕3큰술,다진마늘1큰술,생강즙1/2큰술,후추약간"
            explainLabel.text = "1.갈비는 찬물에 1시간정도 담가 핏물을 빼고, 끓는 물에 살짝 데친 후 물에 헹궈 불순물을 제거해주세요."
            explainLabel2.text = "2. 냄비에 갈비와 고기 삶는 재료를 넣고 1시간정도 삶아 건져낸 후, 힘줄과 기름을 제거하고 양념장 재료와 섞어 버무려주세요."
            explainLabel3.text = "3.무와 당근은 한입크기로 자른 후 모서리를 둥글게 다듬고, 가래떡은 먹기 좋은 크기로 잘라주세요. 표고버섯은 3등분으로 자르고 청양고추와 대파는 어슷하게 썰어주세요."
            explainLabel4.text = "4. 냄비에 양념한 갈비와 갈비 삶은 국물 2컵, 무, 당근을 넣고 20분정도 끓여주세요."
            explainLabel5.text = " 5. 무와 당근이 익으면 표고버섯, 가래떡, 청양고추, 대파를 넣어 5분정도 더 끓여주세요."
        }
        else if navigationItem.title == "견과류멸치볶음"{
            foodview.image = UIImage(named: images[10])
            timeLabel.text = "20분"
            needLabel.text = "(4인분) 잔멸치2컵, 모듬견과류2컵, 통깨약간  //간장양념재료: 올리고당3큰술, 식용유2큰술, 맛술2큰술, 참기름1큰술, 간장1/2큰술, 다진마늘1작은술, 후추약간"
            explainLabel.text = "1. 잔멸치는 굵은채에 담고 흔들어 잔가루를 재거해주세요."
            explainLabel2.text = "2. 마른팬에 잔멸치와 모듬견과류를 넣고, 중약불에서 5-6분정도 바삭하게 볶아주세요."
            explainLabel3.text = "3. 새로 달군팬에 간장양념을 넣고, 양념이 바글바글 끓으면 불을 약한불로 줄여주세요. 잔멸치과 모듬견과류를 넣고 빠르게 섞은 후, 불을 꺼주세요."
            explainLabel4.text = "4. 견과류멸치볶음에 통깨를 뿌려 마무리해주세요."
            explainLabel5.text = " "
        }
        else if navigationItem.title == "시금치볶음" {
            foodview.image = UIImage(named: images[11])
            timeLabel.text = "15분"
            needLabel.text = "(4인분) 시금치200g, 올리브유2/3, 다진마늘1큰술, 소금1/2큰술, "
            explainLabel.text = "1. 끓는물에 소금을 1꼬집넣고 시금치 뿌리부분이 물을 향하게 든 뒤 10초정도 뿌리만 담가뒀다가 잎을 담가주세요. 잎이 부드러워지면 꺼내에 찬물에 씻어서 물기를 꽉 짜준 뒤 먹기좋은 5cm길이로 잘라둡니다."
            explainLabel2.text = "2. 올리브유, 다진마늘, 소금, 후추를 그릇에 넣고 섞어주세요."
            explainLabel3.text = "3. 시금치와 4번의 소스를 버무려주세요."
            explainLabel4.text = "4. 완성된 요리를 그릇에 담아 마무리하세요."
            explainLabel5.text = " "
        }
        else if navigationItem.title == "무생채" {
            foodview.image = UIImage(named: images[12])
            timeLabel.text = "20분"
            needLabel.text = "(3인분) 무500g, 고춧가루3큰술, 실파1대, 통깨약간  //양념재료: 멸치액젓1큰술, 식초1큰술, 설탕1큰술, 다진파1큰술, 다진마늘1큰술, 소금1작은술, 생강가루1/4작은술"
            explainLabel.text = "1. 무는 껍질을 벗기고, 7센치정도길이로 썰어주세요. 토막낸 무를 세워 동그라미면이 위로향하게 놓고, 0.3센치정도 두께로 편을 썰어주세요. 편으로 썬 무를 채썰어주세요."
            explainLabel2.text = "2. 볼에 무채와 고춧가루를 넣고 버무려 10분정도 고춧가루물을 들여주세요."
            explainLabel3.text = "3. 고춧가루에 물들인 무채에 양념재료를 넣고 조물조물 버무려주세요."
            explainLabel4.text = "4. 접시에 무생채를 담고, 송송 썬 실파와 통깨를 뿌려주세요."
            explainLabel5.text = " "
            
        }
        else if navigationItem.title == "계란말이" {
            foodview.image = UIImage(named: images[13])
            timeLabel.text = "25분"
            needLabel.text = "(2인분) 달걀5개, 당근1/4개, 실파3대, 식용유약간  //달걀물: 맛술1큰술, 소금1/4작은술, 후출가루약간"
            explainLabel.text = "1. 당근과 싪는 잘게 자르고, 보ㅛㄹ에 달걀을 넣고 젓가락을 저어 푼 후 야채와 달걀물 재료를 넣고 섞어주세요."
            explainLabel2.text = "2. 중약불로 달군팬에 약간의 식용유를 두르고, 달걀물을 국자로 떠서 넣은 후, 윗면이 반쯤 익으면 달걀을 돌돌 말아주세요."
            explainLabel3.text = "3. 말아진 달걀을 팬 위쪽으로 밀어좋고, 달걀물을 다시부어 3회정도 같은 방법으로 반복해서 달걀을 말아주세요."
            explainLabel4.text = "4. 달걀말이를 먹기좋은 크기로 썰어주세요."
            explainLabel5.text = "5. 알맞은 그릇에 담아 맛잇게 즐겨주세요."
        }
        else if navigationItem.title == "미역줄기" {
            foodview.image = UIImage(named: images[14])
            timeLabel.text = "25분"
            needLabel.text = "(4인분) 염장미역줄기350g, 당근1/3개, 양파1/4개, 다진마늘1/2큰술, 통깨약간  //양념재료: 맛술2큰술, 간장1큰술, 참기름1큰술, 소금1/4작은술, 후추약간"
            explainLabel.text = "1. 미역줄기는 흐르는 물에 여러번 헹구고 찬물에 20분정도담가 소금끼를 빼주세요. 미역줄기를 끓는 물에 넣고 3분정도 데친후 찬물에 헹궈 물기를 빼주세요."
            explainLabel2.text = "2. 미역줄기는 6센치길이로 먹기좋게 자르고, 굵은줄기는 손으로 찢어주세요. 당근과 양파는 곱게 채를 썰어주세요."
            explainLabel3.text = "3. 팬에 식용유를 두르고 다진마늘을 볶다가 양파와 당근,미역줄기를 넣어주세요. 재료들이 부드러워질때까지 볶다가 양념재료를 넣어 볶아주세요."
            explainLabel4.text = "4. 접시에 미역줄기볶음을 담고 통깨를 뿌려주세요."
            explainLabel5.text = " "
        }
        if navigationItem.title == "계란샌드위치" {
            foodview.image = UIImage(named: images[15])
            timeLabel.text = "25분"
            needLabel.text = "(2개) 곡물식빵4장,달걀3개,토마토1개,적양파 또는 양파1/4개,양상추6장,오이피클3큰술 (50g),무순한 줌,소금약간  //소스:마요네즈3큰술,머스터드1/2큰술,소금두 꼬집,후추약간 //스프레드:마요네즈1 ½큰술,머스터드1/2큰술"
            explainLabel.text = "1. 냄비에 물과 약간의 소금을 넣고 달걀을 15분간 삶아서 바로 찬물에 넣어 식힌 후 껍질을 벗겨주세요. 토마토는 0.7cm 두께로 둥글게 썰고 키친타월로 물기를 제거해주세요."
            explainLabel2.text = "2. 적양파는 얇게 채 썰고 양상추는 한 장씩 뜯어서 찬물에 담갔다가 물기를 뺍니다. 피클은 잘게 다져서 준비해주세요."
            explainLabel3.text = "3. 달걀흰자는 굵게 다지고, 노른자는 체에 곱게 내려주세요. 볼에 달걀, 피클, 소스 재료를 넣고 잘 섞어주세요."
            explainLabel4.text = "4. 스프레드 재료를 섞어 빵 한 쪽에 바른 후 양상추-STEP3-적양파-토마토-무순 순으로 올려주세요. 빵으로 덮고 가볍게 누른 후 반으로 잘라주세요."
            explainLabel5.text = "5. 완성된 요리를 그릇에 담아 마무리해주세요."
        }
        else if navigationItem.title == "감자샌드위치" {
            foodview.image = UIImage(named: images[16])
            timeLabel.text = "40분"
            needLabel.text = "(2개) 감자2개,슬라이스 햄6장,오이1/2개,양파1/2개,로메인3장,곡물식빵6장,버터1큰술,소금약간  //소스재료:마요네즈5큰술,머스터드1큰술,올리고당1큰술,소금두꼬집,후추약간 //스프레드:마요네즈1 ½큰술,머스터드1/2큰술"
            explainLabel.text = "1. 감자를 껍질 채 씻어 4등분하고, 김이 오른 찜통에 감자가 포슬거리도록 20분 정도 쪄주세요. 찐감자는 껍질을 벗겨 뜨거울 때 볼에 넣어 으깨고, 버터 1큰술과 약간의 소금, 후추를 더해 섞어주세요."
            explainLabel2.text = "2. 오이는 반달모양으로 썰고, 양파는 채썰어 소금물(물 1컵, 소금 1큰술, 설탕 1큰술)에 10분정도 절였다가 물기를 제거해주세요"
            explainLabel3.text = "3. 볼에 감자와 오이, 양파, 소스를 넣어 섞어 감자샐러드를 만들어주세요"
            explainLabel4.text = "4. 빵(스프레드)-감자샐러드-햄슬라이스-로메인-빵(스프레드)을 순서대로 올리고 가볍게 누른 후 잘라주세요."
            explainLabel5.text = "5. 완성된 요리를 그릇에 담아 마무리해주세요."
        }
        else if navigationItem.title == "비스킷" {
            foodview.image = UIImage(named: images[17])
            timeLabel.text = "55분"
            needLabel.text = "(2개) 밀가루 (박력분)200g,베이킹파우더8g,설탕27g,소금2g,무염버터80g,우유110mL"
            explainLabel.text = "1. 오븐은 180도로 미리 예열해주세요."
            explainLabel2.text = "2. 밀가루와 베이킹파우더를 체에 쳐서 볼에 넣고 설탕, 소금을 섞어주세요. 차가운 상태의 버터를 올려 주걱 또는 스크래퍼로 잘게 자르며 섞어주세요."
            explainLabel3.text = "3. 밀가루의 색이 노랗게 되면 우유를 넣어서 잘 섞은 뒤 냉장고에서 30분간 휴지시킵니다."
            explainLabel4.text = "4. 팬 위에 유산지를 깔고 반죽을 적당한 크기로 떼어 올려주세요."
            explainLabel5.text = "5. 예열한 오븐에서 15~18분간 구워주세요."
        }
        else if navigationItem.title == "아보카드샐러드" {
            foodview.image = UIImage(named: images[18])
            timeLabel.text = "25분"
            needLabel.text = "(2인분) 아보카도1개,달걀2개,잎채소(로메인, 치커리, 라디키오)약간씩,파마산치즈블럭약간,뮤즐리약간  //드레싱재료:올리브오일3큰술,레몬즙(또는 식초)2큰술,올리고당1큰술,다진양파1큰술,소금1/4작은술,후추약간,파슬리가루약간"
            explainLabel.text = "1. 냄비에 달걀과 달걀이 잠길만큼의 물을 넣은 후 약간의 소금, 식초를 넣고 반숙으로 10분 정도 삶아주세요. 삶은 달걀은 찬물에 담갔다가 껍질을 벗겨 주세요."
            explainLabel2.text = "2. 잎채소는 한입 크기로 썰어 찬물에 담가 깨끗이 씻은 후 물기를 제거해주세요. 볼에 드레싱재료를 넣고 섞어주세요."
            explainLabel3.text = "3. 아보카도는 반으로 가른 후, 씨를 빼고 껍질을 벗겨 한입크기로 잘라주세요."
            explainLabel4.text = "4. 접시에 잎채소와 아보카도, 삶은 달걀, 뮤즐리를 올리고 파마산치즈블럭을 갈아 뿌려주세요."
            explainLabel5.text = "5. 샐러드에 레몬드레싱을 곁들여 즐겨주세요."
            
        }
        else if navigationItem.title == "두부도넛" {
            foodview.image = UIImage(named: images[19])
            timeLabel.text = "30분"
            needLabel.text = "(9개) 두부1모(300g),핫케이크가루2컵,우유1~2큰술,슈가파우더(또는 설탕)약간,밀가루약간,식용유적당량"
            explainLabel.text = "1. 두부는 으깬 후 면포로 감싸 가볍게 물기를 짜주세요."
            explainLabel2.text = "2. 두부에 핫케이크가루를 넣은 후 잘 섞고 우유를 넣어 반죽의 농도를 조절해주세요."
            explainLabel3.text = "3. 도마에 밀가루를 뿌리고 손에 밀가루를 묻힌 후 반죽을 50g정도 떼어내어 동그랗게 모양을 잡아주세요. 반죽 중앙을 동그란 뚜껑으로 눌러 구멍을 내고 도넛모양을 만들어주세요."
            explainLabel4.text = "4. 150~160도로 기름을 약하게 달군 후, 도넛을 넣고 굴려가며 노릇하게 속이 익을 때까지 3~4분정도 튀겨주세요."
            explainLabel5.text = "5. 튀긴 도넛에 슈가파우더(또는 설탕)를 뿌려주세요."
        }
        else if navigationItem.title == "수박레몬에이드" {
            foodview.image = UIImage(named: images[20])
            timeLabel.text = "15분"
            needLabel.text = "(200ml)수박1/8통(600g),사이다1컵(200ml),레몬1개,얼음약간,민트약간"
            explainLabel.text = "1. 수박은 껍질과 씨를 제거하고 한입크기로 잘라주세요."
            explainLabel2.text = "2. 레몬은 반은 스퀴저로 즙을 짜고, 반은 슬라이스 해주세요."
            explainLabel3.text = "3. 믹서에 수박과 사이다, 레몬즙 1큰술을 넣고 갈아주세요."
            explainLabel4.text = "4. 잔에 수박레몬에이드를 따른 후 작게 간 얼음을 올리고, 동그랗게 파낸 수박과 레몬, 민트잎으로 장식해주세요."
            explainLabel5.text = " "
        }
        else if navigationItem.title == "자두청" {
            foodview.image = UIImage(named: images[21])
            timeLabel.text = "40분"
            needLabel.text = "(1L)자두15개(과육 1kg),흰설탕1kg,레몬3개,베이킹소다1/4컵"
            explainLabel.text = "1. 냄비에 찬물을 넣고 유리병을 거꾸로 담아 끓여주세요. 물이 끓기 시작하면 중약불로 줄여 2~3분 더 끓인 후 꺼내어 물기를 제거해주세요."
            explainLabel2.text = "2. 자두와 레몬은 베이킹소다에 비비고, 흐르는 물에 깨끗이 씻은 후 물기를 제거해 주세요."
            explainLabel3.text = "3. 자두는 반으로 갈라 꼭지와 씨를 제거하고 잘라주세요. 레몬 1개는 링으로 자르고, 나머지 2개는 레몬즙을 만들어주세요."
            explainLabel4.text = "4. 볼에 잘라 놓은 자두와 설탕, 링으로 자른 레몬, 레몬즙을 넣어 섞어주세요."
            explainLabel5.text = "5. 설탕이 녹으면 소독한 용기에 담고 뚜껑을 닫아주세요."
        }
        else if navigationItem.title == "무알콜레몬모히토" {
            foodview.image = UIImage(named: images[22])
            timeLabel.text = "15분"
            needLabel.text = "애플민트10~15잎,레몬청5큰술,탄산수1컵,얼음5조각"
            explainLabel.text = "1. 애플민트는 차가운 물에 깨끗하게 씻어 물기를 제거해주세요. 컵에 애플민트 잎을 넣고 티스푼 등을 이용하여 향이 날 때까지 빻아주세요."
            explainLabel2.text = "2. 레몬청과 레몬청 안의 레몬 조각을 2~3조각을 함께 넣어주세요."
            explainLabel3.text = "3. 거품이 생기지 않도록 탄산수를 천천히 따라주고 애플민트 잎과 레몬 조각을 얹어서 완성해주세요."
            explainLabel4.text = " "
            explainLabel5.text = " "
        }
        else if navigationItem.title == "곡물라떼" {
            foodview.image = UIImage(named: images[23])
            timeLabel.text = "15분"
            needLabel.text = "(2잔)곡물가루4큰술,우유2컵,꿀 또는 시럽2큰술"
            explainLabel.text = "1. 쉐이커 또는 믹서기에 우유와 곡물가루, 꿀을 넣고 섞어주세요."
            explainLabel2.text = "2. 볼에 우유 5큰술을 넣고 우유거품기로 거품을 만들어주세요."
            explainLabel3.text = "3. 잔에 곡물라떼를 담고, 우유거품 1큰술과 곡물가루를 뿌려주세요."
            explainLabel4.text = " "
            explainLabel5.text = " "
        }
        else if navigationItem.title == "뱅쇼" {
            foodview.image = UIImage(named: images[24])
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
