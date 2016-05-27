//
//  ViewController.swift
//  JSONTest
//
//  Created by Yair Hernandez on 26/05/16.
//  Copyright © 2016 Evolution Technologies SA de CV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func readJsonFromFile(fileName: String) -> JSON? {
        var jsonResult: JSON = nil
        if let filePath = NSBundle.mainBundle().pathForResource(fileName, ofType:"json") {
            let fileContent = NSData(contentsOfFile: filePath)
            jsonResult = JSON(data: fileContent!)
            
        }
        return jsonResult
    }
    
    
    @IBAction func buttonAction(sender: UIButton) {
//        if let filePath = NSBundle.mainBundle().pathForResource("test", ofType:"json") {
//            let fileContent = NSData(contentsOfFile: filePath)
//            let json = JSON(data: fileContent!)
//            print(json)
//            for item in json["people"].arrayValue {
//                print(item["firstName"].stringValue)
//            }
//            
//            let JSONDictionary = json.dictionaryObject!
//            print("JSONDictionary: \(JSONDictionary)")
//            print("ELEMENT: \(JSONDictionary["people"]![0])")
//            
//        }
        if let json = readJsonFromFile("test") {
            let jsonDictionary = json.dictionaryObject
            print(jsonDictionary)
        }
    }
}

