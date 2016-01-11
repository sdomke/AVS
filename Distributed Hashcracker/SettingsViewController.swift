//
//  ViewController.swift
//  Distributed Hashcracker
//
//  Created by Pascal Schönthier on 08.12.15.
//  Copyright © 2015 Pascal Schönthier. All rights reserved.
//

import Cocoa

class SettingsViewController: NSViewController {

    @IBOutlet weak var isManager: NSButton!
    @IBOutlet var serverAdressField: NSTextField!
    @IBOutlet var passwordField: NSTextField!
    @IBOutlet var hashAlgorithmSelected: NSPopUpButton!
    
    
    
    @IBAction func isServerButtonPressed(sender: NSButton) {
        if sender.state == 1 {
            serverAdressField.stringValue = "127.0.0.1"
            serverAdressField.enabled = false
        } else {
            serverAdressField.stringValue = ""
            serverAdressField.enabled = true
        
        }
        
        // TODO: Setup Server
    }
    
    
    @IBAction func StartButtonPressed(sender: NSButton) {
    
        print(passwordField.stringValue)
        print(hashAlgorithmSelected.titleOfSelectedItem!)
        
        switch hashAlgorithmSelected.titleOfSelectedItem!{
        case "MD5":
            let hashAlgorith: HashAlgorith = HashMD5()
            print(hashAlgorith.hash(string: passwordField.stringValue))
        
        case "SHA-128":
            let hashAlgorith: HashAlgorith = HashSHA()
            print(hashAlgorith.hash(string: passwordField.stringValue))
            
        case "SHA-256":
            let hashAlgorith: HashAlgorith = HashSHA256()
            print(hashAlgorith.hash(string: passwordField.stringValue))
        
        default: break
        }
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

