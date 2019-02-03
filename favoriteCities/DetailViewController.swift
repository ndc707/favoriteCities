//
//  DetailViewController.swift
//  favoriteCities
//
//  Created by Student on 1/29/19.
//  Copyright © 2019 Natalie Castaneda. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
    var detailItem: City? {
        didSet {
            //Update the view.
            configureView()
        }
    }
    
    
    func configureView() {
        if let city = self.detailItem {
            if cityTextField != nil{
                cityTextField.text = city.name
                stateTextField.text = city.state
                populationTextField.text = String(city.population)
                imageView.image = UIImage(data: city.image)
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let city = self.detailItem {
            city.name = cityTextField.text!
            city.state = stateTextField.text!
            city.population = Int(populationTextField.text!)!
        }
        
    }
}








