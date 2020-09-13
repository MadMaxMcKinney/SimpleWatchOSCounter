//
//  AddButton.swift
//  SimpleCounter WatchKit Extension
//
//  Created by Max McKinney on 9/12/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import SwiftUI

struct AddButton: View {
    
    var increaseAmount: Int
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            Text("+\(self.increaseAmount)")
        }
        .frame(width: 50)
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton(increaseAmount: 2){}
    }
}
