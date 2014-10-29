//
//  ViewController.swift
//  Errands
//
//  Created by Guled on 10/28/14.
//  Copyright (c) 2014 Guled. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var itemTextField: UITextField!
    
    @IBOutlet weak var quantityTextField: UITextField!
    
    @IBOutlet weak var infoTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func doneButtonTapped(sender: AnyObject) {
        
        var appDel = (UIApplication.sharedApplication().delegate as AppDelegate)
        var managedObjectContext = appDel.managedObjectContext
        var entity = NSEntityDescription.entityForName("ErrandModel", inManagedObjectContext: managedObjectContext!)
        
        var newItem = ErrandModel(entity: entity!, insertIntoManagedObjectContext: managedObjectContext)
        
        newItem.item = itemTextField.text
        newItem.quantity = quantityTextField.text
        newItem.info = infoTextField.text
        
       managedObjectContext?.save(nil)
        
        println(newItem)
        self.navigationController?.popToRootViewControllerAnimated(true)
        
        
    }
}

