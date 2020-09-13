//
//  SimpleCounter'.swift
//  SimpleCounter WatchKit Extension
//
//  Created by Max McKinney on 9/13/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import Foundation

class SimpleCounterVM: ObservableObject {
    
    @Published private(set) var counter:Counter = Counter()
    
    public func getCount() -> Int {
        return UserDefaults.standard.integer(forKey: "counter")
    }
    
    public func clearCounter() {
        counter.count = 0
        saveValue()
    }
    
    public func updateCounter(amount: Int) {
        counter.count += amount
        saveValue()
    }
    
    private func saveValue() {
        UserDefaults.standard.set(counter.count, forKey: "counter")
    }
}
