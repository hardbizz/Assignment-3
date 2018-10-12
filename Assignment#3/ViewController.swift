//
//  ViewController.swift
//  Assignment#3
//
//  Created by MacBook on 12.10.2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Assignment #3
        //countSymbols("Андрей")
        checkIchIn("Яковлевич")
        
    }

    func countSymbols(_ str:String){
        print("В имени \(str) столько символов: \(str.count)")
    }
    
    func checkIchIn (_ str:String) {
        let subString = "ич"
        if str.hasSuffix(subString) {
            print("Введенное отчество \"\(str)\" содержит \"\(subString)\"")
        }
    }
    
    func myNameSurname (_ str: String) {
        
    }
    
    
}

