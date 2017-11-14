//
//  CurrencyViewController.swift
//  Konverter
//
//  Created by Mirza Durakovic on 11/11/2017.
//  Copyright © 2017 Mirza Durakovic. All rights reserved.
//

import UIKit

class CurrencyViewController: UIViewController {
    @IBOutlet weak var euroLabel: UILabel!
    
  
    
    @IBAction func textBoxKM(_ sender: UITextField) {
       
     //  euroLabel.text = String(Double(sender.text!)! / 1.95)
        if let txt = sender.text {
            if let numb = Double(txt) {
                euroLabel.text = String(numb / 1.95)
            }
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
   
    

    override func viewDidLoad() {
       super.viewDidLoad()
         euroLabel.textColor = UIColor.black
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
