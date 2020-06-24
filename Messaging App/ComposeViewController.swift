//
//  ComposeViewController.swift
//  Messaging App
//
//  Created by 村尾慶伸 on 2020/06/23.
//  Copyright © 2020 村尾慶伸. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ComposeViewController: UIViewController {
    
    var ref: DatabaseReference?

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
    }
    
    @IBAction func addPost(_ sender: Any) {
        
        // Todo: Post the data to firebase
        ref?.child("Posts").childByAutoId().setValue(textView.text)
        
        // Dismiss the popover
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelPost(_ sender: Any) {
        
        // Dismiss the popover
        presentingViewController?.dismiss(animated: true, completion: nil)
    }

}
