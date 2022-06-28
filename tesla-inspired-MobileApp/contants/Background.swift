//
//  SwiftUIView.swift
//  tesla-inspired-MobileApp
//
//  Created by Zahra chouchane on 26/6/2022.
//

import SwiftUI

struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("gradientbg11"), Color("gradientbg2")]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
