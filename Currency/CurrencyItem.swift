//
//  CurrencyItem.swift
//  Currency
//
//  Created by 黄俊明 on 15/7/22.
//  Copyright (c) 2015年 CS193p. All rights reserved.
//

import Foundation

class CurrencyItem {
    
    let currencyFlatName: String
    let currencyShortName: String
    let currencyFullName: String
    let currencyPrice: Double
    
    var valueForTextField: Double
    
    init(shortName: String, fullName: String, price: Double){
        let index: String.Index = advance(shortName.startIndex, 2)
        self.currencyFlatName = shortName.substringToIndex(index).lowercaseString
        self.currencyShortName = shortName
        self.currencyFullName = fullName
        self.currencyPrice = price
        self.valueForTextField = 100.0
    }

    func checkForEquality(currencyItemList: NSMutableArray) -> Bool {
        
        for currencyItem in currencyItemList {
            
            if (currencyItem as! CurrencyItem).currencyFullName == self.currencyFullName {
                
                return true
                
            }
        }
        
        return false
    }
    
}