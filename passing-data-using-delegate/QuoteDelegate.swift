//
//  QuoteDelegate.swift
//  passing-data-using-delegate
//
//  Created by Victor on 2020-06-27.
//  Copyright © 2020 Victor Balas. All rights reserved.
//

import Foundation

protocol QuoteDelegate: AnyObject
{
    func onQuoteReady(quote: String)
}
