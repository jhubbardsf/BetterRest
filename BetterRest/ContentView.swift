//
//  ContentView.swift
//  BetterRest
//
//  Created by Josh Hubbard on 1/24/20.
//  Copyright © 2020 YeetBox. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
            // %.3g will show, at most 3 places and remove any access
            Text("\(sleepAmount, specifier: "%.3g") hours")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
