//
//  TicksView.swift
//  tesla-inspired-MobileApp
//
//  Created by Zahra chouchane on 29/6/2022.
//

import SwiftUI

struct TicksView: View {
    var body: some View {
        ZStack{
            ForEach(0..<60)
            {
                position in
                Tick()
                    
                    .stroke(lineWidth: 1)
                    .rotationEffect(.radians(Double.pi * 20 / 60*Double(position)))
                    .foregroundColor(Color("BlueBtnEnding"))
                    .shadow(color: Color("BlueBtnEnding").opacity(0.1), radius: 2, x: 0, y: 0)
                   
                    
            }
        }
    }
}

struct TicksView_Previews: PreviewProvider {
    static var previews: some View {
        TicksView()
    }
}

struct Tick : Shape{
    func path(in rect: CGRect) -> Path{
        
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY + 10))
        return path
    }
}
