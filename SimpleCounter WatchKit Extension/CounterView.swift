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
    
    var addButtons: [Int] = [1,2,3,4,5]
    var subtractButtons: [Int] = [-1, -2, -3]
    
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
                    ForEach(addButtons, id: \.self) {value in
                        AddButton(increaseAmount: value, action: {
                            self.simpleCounter.updateCounter(amount: value)
                        })
                    }
                    ForEach(subtractButtons, id: \.self) {value in
                        SubtractButton(subtractAmount: value, action: {
                            self.simpleCounter.updateCounter(amount: value)
                        })
                    }
               }
               .padding(2)
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(simpleCounter: SimpleCounterVM())
    }
}
