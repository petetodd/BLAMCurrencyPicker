//
//  ViewController.swift
//  BLAMCurrencyPicker
//
//  Created by Peter Todd on 09/09/2016.
//  Copyright (c) 2016 Peter Todd. All rights reserved.
//

import UIKit
import BLAMCurrencyPicker

class ViewController: UIViewController, BGSCurrencyPickerVCProtocol  {

    @IBOutlet weak var lblCurrency: UILabel!
    @IBOutlet weak var lblCurrencyCode: UILabel!
    
    
    @IBOutlet weak var viewMarker: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func butCurrPickerAction(_ sender: AnyObject) {
        let podBundle = Bundle(path: Bundle(for: BGSCurrencyPickerVC.self).path(forResource: "BLAMCurrencyPicker", ofType: "bundle")!)

        
        let vc = BGSCurrencyPickerVC(nibName: "BGSCurrencyPickerVC", bundle: podBundle)
        vc.view.backgroundColor = UIColor.green
        vc.modalPresentationStyle = UIModalPresentationStyle.popover
        vc.popoverPresentationController?.sourceView = viewMarker
        vc.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.up
        vc.preferredContentSize = CGSize(width: vc.view.frame.width, height: vc.view.frame.height)
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
        
        
    }
    
    @IBAction func butTestAction(_ sender: AnyObject) {
        let podBundle = Bundle(for: BGSCurrencyPickerVC.self)
        let viewController = BLAMCurrencyPickerViewController(nibName: "BLAMCurrencyPickerViewController", bundle: podBundle)
        self.present(viewController, animated: true, completion: nil)
  
    }
    //MARK:- Delegate implementations
    func bgsCurrencyPicked(_ currISO: String, currHex: String){
        lblCurrency.text = currHex
        lblCurrencyCode.text = currISO
        
    }



}

