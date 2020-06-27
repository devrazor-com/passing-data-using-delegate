//
//  SourceViewController.swift
//  passing-data-using-delegate
//
//  Created by Victor on 2020-06-27.
//  Copyright © 2020 Victor Balas. All rights reserved.
//

import UIKit

class SourceViewController: UIViewController, QuoteDelegate {
    
    
    @IBOutlet weak var receivedQuoteLbl: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goToDestinationView(_ sender: Any) {
        
        receivedQuoteLbl.text = ""
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "DestinationVCID") as! DestinationViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func onQuoteReady(quote: String) {
        receivedQuoteLbl.text = (quote)
        
    }
    
    
}

