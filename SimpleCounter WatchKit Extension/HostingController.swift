//
//  HostingController.swift
//  SimpleCounter WatchKit Extension
//
//  Created by Max McKinney on 9/12/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<CounterView> {
    override var body: CounterView {
        return CounterView(simpleCounter: SimpleCounterVM())
    }
}
