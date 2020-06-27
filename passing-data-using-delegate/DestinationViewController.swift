//
//  DestinationViewController.swift
//  passing-data-using-delegate
//
//  Created by Victor on 2020-06-27.
//  Copyright © 2020 Victor Balas. All rights reserved.
//

import UIKit

class DestinationViewController: UIViewController {

    weak var delegate:QuoteDelegate?
    
    @IBOutlet weak var quoteEntered: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onSendQuoteBack(_ sender: Any) {
        let myQuote: String = quoteEntered.text ?? ""
       
        delegate?.onQuoteReady(quote: myQuote)
    }
    
    
}
