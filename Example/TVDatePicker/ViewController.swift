//
//  ViewController.swift
//  TVDatePicker
//
//  Created by Kevin Bradley on 09/04/2021.
//  Copyright (c) 2021 Kevin Bradley. All rights reserved.
//

import UIKit
import TVDatePicker

class ViewController: UIViewController {
    
    let datePickerView = DatePickerView(withHybrdidLayout: false)
    let toggleButton = UIButton(type: .system)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datePickerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(datePickerView)
        datePickerView.showDateLabel = true
        datePickerView.addTarget(self, action: #selector(actionOccured(sender:)), for: .valueChanged)
        datePickerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        datePickerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        toggleButton.setTitle("Toggle", for: .normal)
        toggleButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(toggleButton)
        toggleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        toggleButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        toggleButton.addTarget(self, action: #selector(toggleMode), for: .primaryActionTriggered)
        
        datePickerView.datePickerMode = .CountDownTimer//KBDatePickerModeCountDownTimer
        //datePickerView.countDownDuration = 4100
        datePickerView.minuteInterval = 1
        datePickerView.showDateLabel = true
    }
   
    override var preferredFocusEnvironments: [UIFocusEnvironment] {
        return [toggleButton]
    }
    
    @objc func toggleMode() {
        if datePickerView.datePickerMode == .CountDownTimer {
            self.datePickerView.datePickerMode = .Time
        } else {
            self.datePickerView.datePickerMode = DatePickerMode(rawValue: self.datePickerView.datePickerMode.rawValue+1)!
        }
    }
    
    @objc func actionOccured(sender: DatePickerView) {
        print("date selected: \(sender.date)")
    }

}

