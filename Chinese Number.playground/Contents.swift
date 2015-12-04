//: Playground - noun: a place where people can play

import UIKit

class NumberParser {
    func singleNumberToChinse(number: String) -> String {
        switch number {
            case "0":
                return "零"
            case "1":
                return "一"
            case "2":
                return "二"
            case "3":
                return "三"
            case "4":
                return "四"
            case "5":
                return "五"
            case "6":
                return "六"
            case "7":
                return "七"
            case "8":
                return "八"
            case "9":
                return "九"
            default:
                return ""
        }
    }
}

var inPut = [String]()
let convertor = NumberParser()
var transistedChinese = ""

func geweiTransition() -> String {
    let toTransistNumber = inPut.removeLast()
    let singleTransistedChinese = convertor.singleNumberToChinse(toTransistNumber)
    let singleTransistedChineseCharacter = Character(singleTransistedChinese)
    transistedChinese.insert(singleTransistedChineseCharacter, atIndex: transistedChinese.startIndex)
    return transistedChinese
}

func wanyineiTransition(toTransisit: Array<String>) -> String {
    let count = min(inPut.count, 4)
    for _ in 1...count {
        geweiTransition()
    }
    return transistedChinese
}

func wanyiwaiTransition(toTransisit: Array<String>) -> String {
    let wanyiwaiCount = inPut.count - 4
    for _ in 1...4 {
        geweiTransition()
    }
    transistedChinese.insert("万", atIndex: transistedChinese.startIndex)
    for _ in 1...wanyiwaiCount {
        geweiTransition()
    }
    return transistedChinese
}

inPut = ["3","4","5","6","7"]
var sample = wanyiwaiTransition(inPut)
