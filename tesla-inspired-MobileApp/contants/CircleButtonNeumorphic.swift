//
//  CircleButtonNeumorphic.swift
//  tesla-inspired-MobileApp
//
//  Created by Zahra chouchane on 26/6/2022.
//

import SwiftUI

struct CircleButtonNeumorphic: View{
    var iconName: String
    
    var body: some View{
            
     
        
        ZStack{
            ZStack{
                Image(systemName: iconName)
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(Color("gradientbg1"))
                    .offset(x:  0, y:   0)
                    .rotation3DEffect(Angle(degrees:  0), axis: (
                        x: 10, y: -10, z: 0))
                
            }
            .frame(width: 50, height: 50)
            .background(
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [Color("gradientbg2").opacity(0.3)
                        ,Color("gradientbg2")
                        ])
                                   , startPoint: .topLeading, endPoint: .bottomTrailing)
                  
                                        
            
                    Circle()
                      


                          .stroke(LinearGradient(gradient: Gradient(colors: [Color("gradientbg1").opacity(0.4)
                                                                             ,Color("gradientbg2").opacity(0.3)
                                                                             ])
                                                                                        , startPoint: .bottomTrailing, endPoint: .topLeading)
                                    , lineWidth: 3)
                          
                         
                          .shadow(color: Color("shadowcolor").opacity(0.4), radius: 1, x: -3, y:  -3)
                    
            
                    
                    
                }
            )
            .clipShape(Circle())
            
            .shadow(color: Color("gradientbg2").opacity(0.1), radius: 1, x: 1, y: 1)
            
            .shadow(color: .white.opacity(0.17), radius: 17, x: -10, y: -18)
            
            .shadow(color: .black.opacity(0.7)
                    , radius: 17, x: 14, y: 20)
            
            
           
           

        }
      
    
        
    }
}


struct CircleButtonNeumorphic_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonNeumorphic(iconName: "menu")
    }
}
