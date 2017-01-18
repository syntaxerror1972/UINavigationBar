//
//  ViewController.swift
//  UINavigationBar
//
//  Created by Shrawan Shinde on 19/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor=UIColor.white
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: getWindowWidth(), height: 60))
        self.view.addSubview(navBar);
        let navItem = UINavigationItem(title: "Navigation Bar");
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: nil, action: "doneClick");
        navItem.rightBarButtonItem = doneItem;
        
        
        navBar.setItems([navItem], animated: false);
        
        self.view.addSubview(navBar)
    }
    
    func doneClick(){
        
        //Write button action here
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = "Done Button Clicked";
        alertView.show();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

