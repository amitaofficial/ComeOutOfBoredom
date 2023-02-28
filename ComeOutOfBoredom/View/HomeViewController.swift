//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Amita Ghosh on 2/23/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var viewModel : HomeVCViewModel = HomeVCViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // button action in the home screen
    @IBAction func bottomButtonClicked(_ sender: Any) {
        
        viewModel.callApI { 
            if self.viewModel.res != nil{
                // present the next screen
                DispatchQueue.main.async {
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let second:SecondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
                    second.secondViewModel.activityText = self.viewModel.res?.activity ?? "No activity for now!"
                    self.present(second, animated: true,completion: nil)
                }
            }
        }
    }
}

