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
    
    @IBAction func butCurrPickerAction(sender: AnyObject) {
        let podBundle = NSBundle(forClass: BGSCurrencyPickerVC.self)
        
        let vc = BGSCurrencyPickerVC(nibName: "BGSCurrencyPickerVC", bundle: podBundle)
        vc.view.backgroundColor = UIColor.greenColor()
        vc.modalPresentationStyle = UIModalPresentationStyle.Popover
        vc.popoverPresentationController?.sourceView = viewMarker
        vc.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.Up
        vc.preferredContentSize = CGSizeMake(vc.view.frame.width, vc.view.frame.height)
        vc.delegate = self
        self.presentViewController(vc, animated: true, completion: nil)
        
        
    }
    
    //MARK:- Delegate implementations
    func bgsCurrencyPicked(currISO: String, currHex: String){
        lblCurrency.text = currHex
        lblCurrencyCode.text = currISO
        
    }



}

