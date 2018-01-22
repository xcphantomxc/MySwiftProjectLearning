//
//  ViewController.swift
//  SwiftNotes
//
//  Created by xuechen on 2018/1/18.
//  Copyright © 2018年 xuechen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
         let 声明常量 var 声明变量
         */
        let maximumNumberOfLoginAttrmpts = 10
        var currentLoginAttrmpt = 0
        print(maximumNumberOfLoginAttrmpts, currentLoginAttrmpt)
        
        /*
         可以再一行中声明多个常量或者多个变量，用逗号隔开
         */
        var x = 0.0, y = 0.0, z = 0.0
        
        //注：如果代码中又不需要更改的值，请使用 let 关键字声明他们为常量。
        
        /*
         当声明常量或者变量的时候加上类型标注，说明常量或者变量中要存储的值的类型。
         */
        var welcomeMessage: String //声明一个类型为 String，名字为 welcomeMessage 的变量。
        welcomeMessage = "Hello"
        
        /*
         可以在一行中定义多个同样类型的变量, 常量与变量名不能包含数学符号，箭头，保留的(或者非法的)Unicode 码位，连线与制表符。也不能以数字开 头，但是可以在常量与变量名的其他地方包含数字，避免使用关键字作为常量或变量名
         */
        var red, green, blue: Double
        
        //常量一旦被确定就不能更改了。编译时会报错
        /*
         Swift 用字符串插值(string interpolation)的方式把常量名或者变量名当做占位符加入到长字符串中，Swift 会用当前常量或变量的值替换这些占位符。将常量或变量名放入圆括号中，并在开括号前使用反斜杠将其转义
         */
        print("\(welcomeMessage) word")
        
        /*
         整数字面量可以被写作:
         • 一个十进制数，没有前缀
         • 一个二进制数，前缀是 0b
         • 一个八进制数，前缀是 0o
         • 一个十六进制数，前缀是 0x
         */
        
        let twoThousand: UInt16 = 2_000
        let one: UInt8 = 1
        let twoThousandAndOne = twoThousand + UInt16(one)
        
        let three = 3
        let pointOneFourOneFiveNine = 0.14159
        let pi = Double(three) + pointOneFourOneFiveNine
        // pi 等于 3.14159，所以被推测为 Double 类型
        
        let integerPi = Int(pi)
        // integerPi 等于 3，所以被推测为 Int 类型
        
        /*
         类型别名
         类型别名(type aliases)就是给现有类型定义另一个名字。你可以使用 typealias 关键字来定义类型别名。
         当你想要给现有类型起一个更有意义的名字时，类型别名非常有用。假设你正在处理特定长度的外部资源的数
         据
         */
        typealias AudioSample = UInt16
        var maxAmplitudeFound = AudioSample.min // maxAmplitudeFound 现在是0
        
        //如果你在需要使用 Bool 类型的地方使用了非布尔值，Swift 的类型安全机制会报错。
        /*
         let i = 1
         if i {
            // 这个例子不会通过编译，会报错
         }
         */
        
        //然而，下面的例子是合法的:
        let i = 1
        if i == 1 {
            // 这个例子会编译成功
            
        }
        
        /*
         元组
         元组是把多个值组合成一个复合值。元组内的值可以使任意类型，并不要求是相同类型。
         */
        let http404Error = (404, "Not Found")
        
        //你可以讲一个元组的内容分解成单独的常量和变量
        let (statusCode, statusMessage) = http404Error
        print(statusCode)
        print(statusMessage)
        
        //如果你只需要一部分，分解的时候可以把要忽略的部分用下划线标记
        let (justTheStatusCode, _) = http404Error
        print("the status code is \(justTheStatusCode)")
        
        //可以通过下标来访问
        print("the status code is \(http404Error.0)")
        print("the status message is \(http404Error.1)")
        
        //可以在定义元组的时候给单个元素命名
        let http200Status = (statusCode: 200, description: "OK")
        print("the status code is \(http200Status.statusCode)")
        print("the status message is \(http200Status.description)")
        
        //元组在临时组织值的时候很有用，但是并不适合创建复杂的数据结构。如果你的数据结构并不是临时使用，请使用类或者结构体而不是元组。
        
        /*
         可选类型：
         可选类型表示：有值等于x 或者 没有值
         Swift 的 int 类型有一种构造器，是将一个 string 转成 int 值，不过不是所有字符都可以转换成整数，字符串“123”可以转换成数字 123，但是字符串"hello world" 不行；
         */
        let possibleNumber = "123"
        let convertedNumer = Int(possibleNumber)
        //convertedNumber 被推测为类型 “int” 或者类型“optional Int”
        
        /*
         因为该构造器可能会失败，所以它返回一个可选类型(optional) Int ，而不是一个 Int 。一个可选的 Int 被写作 Int? 而不是 Int 。问号暗示包含的值是可选类型，也就是说可能包含 Int 值也可能不包含值。(不 能包含其他任何值比如 Bool 值或者 String 值。只能是 Int 或者什么都没有。)
         nil 不能用于非可选的常量和变量。如果你的代码中有常量或者变量需要处理值缺失的情况，请把它们声明成
         对应的可选类型。

         */
        
        //如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil
        var surveyAnswer: String! //被设置为 nil
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

