//
//  VC3.swift
//  Calculator Simulator
//
//  Created by Student on 5/15/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class VC3: UIViewController
{
    
    @IBOutlet weak var displayLabel: UILabel!
    var numberArray = [Double()]
    var i = 0
    var add = false
    var divide = false
    var multiply = false
    var subtract = false
    var answer = 0.0
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func oneTapped(_ sender: Any)
    {
        displayLabel.text = displayLabel.text! + "1"
        numberArray[i] = Double(displayLabel.text!)!
    }
    
    @IBAction func twoTapped(_ sender: Any)
    {
        displayLabel.text = displayLabel.text! + "2"
        numberArray[i] = Double(displayLabel.text!)!
    }
    @IBAction func threeTapped(_ sender: Any)
    {
        displayLabel.text = displayLabel.text! + "3"
        numberArray[i] = Double(displayLabel.text!)!
    }
    @IBAction func fourTapped(_ sender: Any)
    {
        displayLabel.text = displayLabel.text! + "4"
        numberArray[i] = Double(displayLabel.text!)!
    }
    @IBAction func fiveTapped(_ sender: Any)
    {
        displayLabel.text = displayLabel.text! + "5"
        numberArray[i] = Double(displayLabel.text!)!
    }
    @IBAction func sixTapped(_ sender: Any)
    {
        displayLabel.text = displayLabel.text! + "6"
        numberArray[i] = Double(displayLabel.text!)!
    }
    @IBAction func sevenTapped(_ sender: Any)
    {
        displayLabel.text = displayLabel.text! + "7"
        numberArray[i] = Double(displayLabel.text!)!
    }
    @IBAction func eightTapped(_ sender: Any)
    {
        displayLabel.text = displayLabel.text! + "8"
        numberArray[i] = Double(displayLabel.text!)!
    }
    @IBAction func nineTapped(_ sender: Any)
    {
        displayLabel.text = displayLabel.text! + "9"
        numberArray[i] = Double(displayLabel.text!)!
    }
    @IBAction func zeroTapped(_ sender: Any)
    {
        displayLabel.text = displayLabel.text! + "0"
        numberArray[i] = Double(displayLabel.text!)!
    }
    @IBAction func clearButton(_ sender: Any)
    {
        numberArray = [0.0]
        displayLabel.text = ""
        i = 0
    }
    
    @IBAction func addButton(_ sender: Any)
    {
        i = i + 1
        add = true
        subtract = false
        multiply = false
        divide = false
        displayLabel.text = ""
        while numberArray.count <= i
        {
            numberArray.append(0)
        }
    }
    @IBAction func subtractButton(_ sender: Any)
    {
        i = i + 1
        add = false
        subtract = true
        multiply = false
        divide = false
        displayLabel.text = ""
        while numberArray.count <= i
        {
            numberArray.append(0)
        }
    }
    @IBAction func multiplyButton(_ sender: Any)
    {
        i = i + 1
        add = false
        subtract = false
        multiply = true
        divide = false
        displayLabel.text = ""
        while numberArray.count <= i
        {
            numberArray.append(0)
        }
    }
    @IBAction func divideButton(_ sender: Any)
    {
        i = i + 1
        add = false
        subtract = false
        multiply = false
        divide = true
        displayLabel.text = ""
        while numberArray.count <= i
        {
            numberArray.append(0)
        }
    }
    @IBAction func equalsButton(_ sender: Any)
    {
        if add == true
        {
            answer = numberArray[0] + numberArray[1]
            displayLabel.text = "\(answer)"
        }
        else if subtract == true
        {
            answer = numberArray[0] - numberArray[1]
            displayLabel.text = "\(answer)"
        }
        else if multiply == true
        {
            answer = numberArray[0] * numberArray[1]
            displayLabel.text = "\(answer)"
        }
        else if divide == true
        {
            answer = numberArray[0] / numberArray[1]
            displayLabel.text = "\(answer)"
        }
        
    }
    
    
}


