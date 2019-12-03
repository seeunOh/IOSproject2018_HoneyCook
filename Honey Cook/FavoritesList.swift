//
//  FavoritesList.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 8..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import Foundation
import UIKit

class FavoritesList{
    static let sharedFavoritesList = FavoritesList()
    var favorites:[String]
    
    init() {
        let defaults = UserDefaults.standard
        let storedFavorites = defaults.object(forKey: "favorites") as?[String]
        favorites = storedFavorites != nil ? storedFavorites!: []
    }
    //
    func addFavorites(fontName: String){
        if !favorites.contains(fontName){
            favorites.append(fontName)
            saveFavorites()
        }
    }
    
    func addFavor(food: String){
        if !favorites.contains(food){
            favorites.append(food)
            saveFavorites()
        }
    }
    //
    func removeFavorites(fontName:String){
        if let index = favorites.index(of:fontName){
            favorites.remove(at:index)
            saveFavorites()
        }
    }
    
    func removeFavor(food: String){
        if let index = favorites.index(of: food){
            favorites.remove(at: index)
            saveFavorites()
        }
    }
    private func saveFavorites(){
        let defaults = UserDefaults.standard
        defaults.set(favorites,forKey:"favorites")
        defaults.synchronize()
    }
    /*
    func moveItem(fromIndex from:Int, toIndex to:Int){
        let item = favorites[from]
        favorites.remove(at: from)
        favorites.insert(item, at: to)
        saveFavorites()
    }*/
    
}
