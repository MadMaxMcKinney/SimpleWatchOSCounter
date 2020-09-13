//
//  SubtractButton.swift
//  SimpleCounter WatchKit Extension
//
//  Created by Max McKinney on 9/12/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import SwiftUI

struct SubtractButton: View {
    var subtractAmount: Int
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            Text("\(self.subtractAmount)")
        }
        .frame(width: 50)
    }
}

struct SubtractButton_Previews: PreviewProvider {
    static var previews: some View {
        SubtractButton(subtractAmount: 1){}
    }
}
