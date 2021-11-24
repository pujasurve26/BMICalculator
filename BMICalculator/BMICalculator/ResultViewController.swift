//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Puja Kalpesh Surve on 24/11/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var imgShowHeart: UIImageView!
    @IBOutlet weak var lblBMIShow: UILabel!
    @IBOutlet weak var lblAdvice: UILabel!
    @IBOutlet weak var lblBMISuggestion: UILabel!

    var height:String = ""
    var weight:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculateBMI()
    }
    
    func calculateBMI() {
        
        let heightM = (Double(height) ?? 0.0) / 100
        let hSque = heightM * heightM
        let bmi = (Double(weight) ?? 0.0) / hSque
        let strRes = String(format: "%.1f", bmi)
        lblBMIShow.text = "Your BMI is " + strRes
        
        if bmi <= 18.5 {
            imgShowHeart.image = UIImage(named: "Happy Heart")
            lblAdvice.text = "You need to gain weight"
            lblBMISuggestion.text = "Ohhh!! Your BMI Is Underweight😯"
        } else if bmi <= 25 {
            imgShowHeart.image = UIImage(named: "Cute Heart")
            lblAdvice.text = "You are Totaly Fit "
            lblBMISuggestion.text = "Hurray!! Your BMI Is Normal🤩"
        } else if bmi <= 30 {
            imgShowHeart.image = UIImage(named: "sad")
            lblAdvice.text = "You need to loose weight "
            lblBMISuggestion.text = "Sadly!! Your BMI Is Overweight😞"
        } else {
            imgShowHeart.image = UIImage(named: "crying")
            lblAdvice.text = "Ohh No!! You need to loose weight & take healthy food only😢"
            lblBMISuggestion.text = "Your BMI Is Obese"
        }
        
    }
    
    
    @IBAction func btnRecalculateTapped(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }

}
