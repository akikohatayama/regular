//
//  ViewController.swift
//  正規表現Test
//
//  Created by akiko hayashi on 2017/09/07.
//  Copyright © 2017年 akiko hayashi. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str :NSMutableString = "\\.^~@:あ　\\\\[い \\*\\+う\\?え&\\]お\"_,=か\\{<>き\\}く#%\\(け\\)こ'!"
        
        let regular : NSRegularExpression! = try? NSRegularExpression(pattern: "[\\\\\\*\\+\\.\\?\\{\\}\\(\\)\\[\\]$\\-\\|\\/^~@:;<>`#%&'!\"_,= 　]", options: [])
        
        //\*+.?{}()[]$-|/半角スペース・全角スペースが入っていたとき
        if let _ = regular.firstMatch(in: str as String, options: [], range: NSMakeRange(0, str.length)) {

            //置換
            regular.replaceMatches(in: str, options: [], range: NSMakeRange(0, str.length), withTemplate: "")
        }
        print(str)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

