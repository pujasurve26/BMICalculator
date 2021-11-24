//
//  ViewController.swift
//  BMICalculator
//
//  Created by Puja Kalpesh Surve on 24/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblHeightshow: UILabel!
    @IBOutlet weak var lblWeightshow: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func hightsliderMove(_ sender: UISlider) {
        lblHeightshow.text = ("\(String(format: "%.1f", sender.value)) Cm")
    }
    @IBAction func weightslider(_ sender: UISlider){
        lblWeightshow.text = ("\(String(format: "%.1f", sender.value)) Kg")
        
    }
    
    @IBAction func btnCalculateTapped(_ sender: UIButton) {
        
        let arrHeight = lblHeightshow.text?.components(separatedBy: " ")
        let arrWeight = lblWeightshow.text?.components(separatedBy: " ")
        let height = arrHeight?[0] ?? ""
        let weight = arrWeight?[0] ?? ""
        
        let story = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        vc.height = height
        vc.weight = weight
        navigationController?.pushViewController(vc, animated: true)
    }

}

