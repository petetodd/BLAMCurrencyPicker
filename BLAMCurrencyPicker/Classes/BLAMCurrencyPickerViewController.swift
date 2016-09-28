//
//  BLAMCurrencyPickerViewController.swift
//  Pods
//
//  Created by Peter Todd Air on 09/09/2016.
//
//

import UIKit

open class BLAMCurrencyPickerViewController: UIViewController {

   open override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func butDismissAction(_ sender: AnyObject) {
        dismiss(animated: false, completion: nil)
    }

}
