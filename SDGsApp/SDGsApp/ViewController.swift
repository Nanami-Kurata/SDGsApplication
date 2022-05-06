//
//  ViewController.swift
//  SDGsApp
//
//  Created by 倉田七海 on 2022/04/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedStartButton(_ sender: Any) {
        let listedView = self.storyboard?.instantiateViewController(withIdentifier: "listedView")  as! SdgListedController
        listedView.modalPresentationStyle = .fullScreen
        self.present(listedView, animated: true, completion: nil)
    }
    
}

