//
//  ViewController.swift
//  SeconKadaiApp_3
//
//  Created by Kosuke Miyazaki on 2024/04/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func unwind(_segue: UIStoryboardSegue){
    }
    @IBOutlet weak var textField: UITextField!
    
    //@IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            // segueから遷移先のResultViewControllerを取得する
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.text = textField.text!
        }
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        //resultViewController.x = 1
        //resultViewController.y = 1
    }
}
