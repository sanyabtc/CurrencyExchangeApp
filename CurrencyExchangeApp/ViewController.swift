//
//  ViewController.swift
//  CurrencyExchangeApp
//
//  Created by Александр Басалаев on 11.02.2025.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencys.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencys[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userChangeCurrencyIn.delegate = self
        userChangeCurrencyIn.dataSource = self
        userChangeCurrencyOut.delegate = self
        userChangeCurrencyOut.dataSource = self
       }
        
    @IBOutlet weak var textInfoGuide: UITextView!
    
    
    @IBOutlet weak var userChangeCurrencyIn: UIPickerView!
    
    
    @IBOutlet weak var userChangeCurrencyOut: UIPickerView!
    
    
    
    let currencys = ["USD", "RUB", "EURO"]
}
