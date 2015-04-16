//
//  LLNumberConverterViewController.swift
//  NumberConverterPro
//
//  Created by Thomas Hocking on 4/16/15.
//  Copyright (c) 2015 LionLabs. All rights reserved.
//

import UIKit

class LLNumberConverterViewController: UIViewController {
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var binaryNumberField: UITextField!
    @IBOutlet weak var decimalNumberField: UITextField!
    @IBOutlet weak var hexNumberField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    
    @IBAction func pressedClearButton (sender: UIButton){
        inputField.text = ""
        binaryNumberField.text = ""
        decimalNumberField.text = ""
        hexNumberField.text = ""
    }
    
    
    
    func convertNumber(){
        //let input:Int = inputField.text.toInt()!
        let inputBin = String(inputField.text.toInt()!, radix:2)
        let inputDec = String(inputField.text.toInt()!, radix:10)
        let inputHex = String(inputField.text.toInt()!, radix:16)
        
        binaryNumberField.text = inputBin
        decimalNumberField.text = inputDec
        hexNumberField.text = inputHex
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //clearButton.addTarget(clearButton, action: pressedClearButton(self), forControlEvents: UIControlEvents.TouchDown)
        clearButton.addTarget(self, action: "pressedClearButton:", forControlEvents: UIControlEvents.TouchDown)
        inputField.addTarget(self, action: "convertNumber", forControlEvents: UIControlEvents.EditingDidEndOnExit)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
