//
//  SecondViewController.swift
//  MyFirstApp
//
//  Created by Amita Ghosh on 2/23/23.
//

import Foundation

import UIKit


class SecondViewController: UIViewController {
//    var buttonText : String = ""
    var secondViewModel : SecondVCViewModel = SecondVCViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        screenLabel?.text = secondViewModel.activityText
    }
    
    
    @IBOutlet weak var screenLabel: UILabel!
    
    @IBAction func dismissVC(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
