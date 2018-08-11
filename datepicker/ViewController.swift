//
//  ViewController.swift
//  datepicker
//
//  Created by Sanoj Kashyap on 11/08/18.
//  Copyright © 2018 Sanoj Kashyap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datepicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        datepicker.datePickerMode = .date
        datepicker.timeZone = TimeZone(identifier: "IRST")
        datepicker.calendar = Calendar(identifier: .persian)
        datepicker.locale = Locale(identifier: "fa_IR")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change(_ sender: Any) {
        
        let components = Calendar.current.dateComponents([.month, .day,.year], from: datepicker.date)
        let hour = components.month
        let minute = components.day
        let yr=components.year
        print(hour,minute,yr)
    }
    
}

