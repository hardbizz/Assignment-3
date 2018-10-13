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
        //checkIchIn("Яковлевич")
        //myNameSurname("LysenkoAndrey")
        //        var a = "jdDdfJJKKDdddd"
        //        let lowerCaseString = a.lowercased()
        //        print (lowerCaseString)
        //  mirroredString("ой всё")
        separatedNumbersByThousand(-1253456456456770)
        
        
    }
}

func countSymbols(_ str:String){
    print("В имени \(str) столько символов: \(str.count)")
}

func checkIchIn(_ str:String) {
    let subString = "ич"
    if str.hasSuffix(subString) {
        print("Введенное отчество \"\(str)\" содержит \"\(subString)\"")
    }
}

func myNameSurname(_ str: String) -> String {
    let lowerCaseString = str.lowercased() // создаём доп строку из маленьких букв для поиска большой сравнением
    var positionOfUpperWord = 0 //позиция искомой большой буквы в середине строки
    var i = 1 // будем перебирать строку но не с первого символа
    for _ in 0..<str.count-1 {
        if str[str.index(str.startIndex, offsetBy: i)] !=
            lowerCaseString[lowerCaseString.index(lowerCaseString.startIndex, offsetBy: i)]
        {
            positionOfUpperWord = i
        }
        i+=1
    }
    let name = String(str.prefix(positionOfUpperWord))
    let surname = String(str.suffix(str.count - positionOfUpperWord))
    let fullName = name + " " + surname
    print (name)
    print (surname)
    print (fullName)
    return fullName
    
}

func mirroredString(_ str: String) -> String {
    // var copystr = str
    var newstr = ""
    var i = str.count - 1
    for _ in 0..<str.count {
        newstr += String(str[str.index(str.startIndex, offsetBy: i)])
        i-=1
        //     newstr.append(copystr.removeLast())
    }
    print("\(str)->\(newstr)")
    return(newstr)
    
}

func separatedNumbersByThousand(_ number: Int64) -> String {
    var str = String(abs(number)) /* убираем "-" если есть, в конце вернём.
   Будем двигаться с конца строки к началу, справа неалево, вставляя запятые
  в каждую четвертую позицию (то есть после третей), пока не пройдём
  всю длину, отнимая по 3 от общей длины строки. Так как на конец не нужна запятая,
    сразу отнимем 3 от общей длины */
    
    var step = str.count - 3
    var position = 3 // начинаем с третьей справа (она вообще -3)
    while step > 0 {
     str.insert(",", at: str.index(str.endIndex, offsetBy: -position))
        position+=4
        step-=3
        
    }
     // если число заходило отрицательное, добавляем "-" в начало
    if number < 0 {
        str = "-" + str
    }
    print (str)
    
return str
}





