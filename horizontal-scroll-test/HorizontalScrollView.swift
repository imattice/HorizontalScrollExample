//
//  HorizontalScrollView.swift
//  horizontal-scroll-test
//
//  Created by Ike Mattice on 2/6/22.
//

import SwiftUI

struct HorizontalScrollView: View {
    @Binding var text: String

    var body: some View {
        ScrollViewReader { scrollView in
            GeometryReader { proxy in
                ScrollView(.horizontal) {
                    HStack {
                        Spacer()
                        Text(text)
                            .id("textView")
                            .font(.title2)
                            .lineLimit(1)
                            .background(.red)
                            .padding(.bottom)
                    }
                    .frame(minWidth: proxy.size.width
                           ,idealHeight: 44
                           )
                    .background(.yellow)
                }
                .onChange(of: text) { _ in
                    withAnimation {
                        scrollView.scrollTo("textView", anchor: .trailing)
                    }
                }
                .background(.green)
            }
        }
    }
}

struct HorizontalScrollView_Previews: PreviewProvider {
    @State static var text: String = "100100100"
    static var previews: some View {
        HorizontalScrollView(text: $text)
    }
}
