//
//  CounterButton.swift
//  SimpleCounter WatchKit Extension
//
//  Created by Max McKinney on 9/13/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import SwiftUI

struct CounterButton: View {
    
    var type: CounterButtonType
    var value: Int
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            if(type == .ADD) {
                Text("+\(self.value)")
            }
            if(type == .SUBTRACT) {
                Text("-\(self.value)")
            }
        }
        .frame(width: 50)
    }
}

struct CounterButton_Previews: PreviewProvider {
    static var previews: some View {
        CounterButton(type: CounterButtonType.ADD, value: 1){}
    }
}

enum CounterButtonType {
    case ADD
    case SUBTRACT
}
