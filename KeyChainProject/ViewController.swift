//
//  ViewController.swift
//  KeyChainProject
//
//  Created by Prince Alvin Yusuf on 12/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    let int: Int = 555
    let arrayAPI: [String] = [
    "xdkfjaef", "rtjaljgat", "tyloibaog",
    ]
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataInt = Data(from: int)
        let statusInt = KeyChain.save(key: "MyNumber", data: dataInt) // 0
        print("statusInt:", statusInt)
        
        let dataString = Data(from: arrayAPI)
        let statusString = KeyChain.save(key: "MyString", data: dataString)
        print("statusString:", statusString)
    }
    
    
    
    @IBAction func loadButtonPressed(_ sender: UIButton) {
        
        if let receiveData = KeyChain.load(key: "MyString") {
            let result = receiveData.to(type: [String].self)
            print(result)
            resultLabel.text = result[0]
        }
    }
    


}

