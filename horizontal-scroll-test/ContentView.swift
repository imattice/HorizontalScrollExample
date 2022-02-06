//
//  ContentView.swift
//  horizontal-scroll-test
//
//  Created by Ike Mattice on 2/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = "100"

    var body: some View {
        VStack {
            HorizontalScrollView(text: $text)
                .padding(.top, 100)
            Button("Add 100",
                   action: updateText)
                .padding(.bottom, 100)
        }
    }

    func updateText() {
        text += "100"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
