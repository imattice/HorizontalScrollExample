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
            Spacer()
            HorizontalScrollView(text: $text)
                .padding(.top, 60)
            Button("Add 100",
                   action: updateText)
                .padding(.bottom, 60)
            Spacer()
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
