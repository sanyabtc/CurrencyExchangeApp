//
//  ViewController.swift
//  CurrencyExchangeApp
//
//  Created by Александр Басалаев on 11.02.2025.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencys.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencys[row]
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = "1234567890."
        return string.isEmpty || allowedCharacters.contains(string)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userChangeCurrencyIn.delegate = self
        userChangeCurrencyIn.dataSource = self
        userChangeCurrencyOut.delegate = self
        userChangeCurrencyOut.dataSource = self
        userInfoSum.keyboardType = .decimalPad
        userInfoSum.delegate = self
        userInfoSum.placeholder = "Введите сумму"
       }
        
    @IBOutlet weak var textInfoGuide: UITextView!
    
    
    @IBOutlet weak var userChangeCurrencyIn: UIPickerView!
    
    
    @IBOutlet weak var userChangeCurrencyOut: UIPickerView!
    
    
    
    @IBOutlet weak var userInfoSum: UITextField!
    
    
    let currencys = ["USD", "RUB", "EURO"]
}
