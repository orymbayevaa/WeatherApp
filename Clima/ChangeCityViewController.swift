//
//  ChangeCityViewController.swift
//  WeatherApp
//  Created by Aisha Orymbayeva on 12/07/2017

import UIKit

protocol ChangeCityDelegate{
    func userEnteredANewCityName(city : String)
}

class ChangeCityViewController: UIViewController {
    var delegate : ChangeCityDelegate?
    

    @IBOutlet weak var changeCityTextField: UITextField!

    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        let cityName = changeCityTextField.text!
        delegate?.userEnteredANewCityName(city: cityName)
        self.dismiss(animated: true, completion: nil)
      
    }

    //This is the IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
