//
//  ContentView.swift
//  SimpleCounter WatchKit Extension
//
//  Created by Max McKinney on 9/12/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import SwiftUI

struct CounterView: View {
    
    @ObservedObject var simpleCounter: SimpleCounterVM
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Spacer()
                // Delete Button
                Button(action: {
                    self.simpleCounter.clearCounter()
                }) {
                    Image(systemName: "trash")
                }
                .frame(width: 50)
                .foregroundColor(.red)
            }
            
            Text("\(self.simpleCounter.getCount())")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .cornerRadius(4)
                .font(.largeTitle)
            
            ScrollView(.horizontal) {
                HStack (spacing: 4) {
                    // Loop through the first dimension of the counterButton 2D array.
                    // This gets us the different types of buttons
                    // Then in the next loop go through each button of that type, using it's index as it's value
                    ForEach(self.simpleCounter.counterButtons, id: \.self) {listOfButtons in
                        ForEach(0..<listOfButtons.count){buttonIndex in
                            CounterButton(type: listOfButtons[buttonIndex], value: buttonIndex+1){
                                self.simpleCounter.updateCounter(type: listOfButtons[buttonIndex], amount: buttonIndex+1)
                            }
                        }
                    }
                }
               .padding(2)
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(simpleCounter: SimpleCounterVM(counterButtons: [[.ADD, .ADD, .ADD],[.SUBTRACT]]))
    }
}
