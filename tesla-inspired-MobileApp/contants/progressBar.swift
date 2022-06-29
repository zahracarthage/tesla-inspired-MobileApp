//
//  progressBar.swift
//  tesla-inspired-MobileApp
//
//  Created by Zahra chouchane on 29/6/2022.
//

import SwiftUI

struct progressBar: View {
    
    
    
    @Binding var progressbar: Float

    
    var body: some View {
    
    //  TicksView()
     //       .foregroundColor(Color("BlueBtnEnding"))
     //       .frame(width: 200, height: 200)
      //      .shadow(color: Color("BlueBtnEnding"), radius: 1, x: 0, y: 0)
        
        


        TicksView()
            .frame(width: 250, height: 250)
        
        ZStack{
            
        
            Circle()
                .stroke(lineWidth: 60)
                .fill(.black.opacity(0.5))
              //  .frame(width: 250, height: 250)
               


       
            Circle()
                .stroke(lineWidth: 40)
                .foregroundColor(Color("outerColor2"))
                .shadow(color: .white.opacity(0.05), radius: 3, x: 1, y: 1)
            
               
            Circle()
              
                .trim(from: 0.0, to: 0.5)
            
                .stroke(style: StrokeStyle(lineWidth: 40, lineCap: .round, lineJoin: .round))
                
                .fill(
                        LinearGradient(gradient: Gradient(colors: [Color("BlueBtnStarter"), Color("BlueBtnEnding")]), startPoint: .top, endPoint: .bottom)
                    )
           
               // .frame(width: 50, height: 50)
            

                .rotationEffect(Angle(degrees: 130))
            
            
         
                
            Circle()
                .frame(width: 117, height: 117)
                .foregroundColor(Color("outerColor2"))
                .shadow(color: .white.opacity(0.14), radius: 3, x: -1, y: 0)
           
            VStack{
                Text("24 C")
                    .foregroundColor(.white)
                    .font(.custom("Gilroy-Black", size: 30))
                Text("Cooling...")
                    .foregroundColor(.white)
                    .font(.custom("Gilroy-Medium", size: 16))
            }
            
            ZStack{
               
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [      Color("gradientbg2"),Color("gradientbg11")]), startPoint: .top, endPoint: .bottom))
                
                    .frame(width: 35, height: 35)
                Circle()
                    .foregroundColor(Color("BlueBtnEnding"))
                    .frame(width: 5, height: 5)
               
                
               
            }.offset(x: 51, y:-62)
            
            

               
        }
       .shadow(color: Color("gradientbg2").opacity(0.05), radius: 1, x: 1, y: 1)
        
        
         .shadow(color: .white.opacity(0.15), radius: 17, x: -15, y: -18)
        
        .shadow(color: .black.opacity(0.5)
               , radius: 14, x: 14, y: 20)
    }
}

struct progressBar_Previews: PreviewProvider {
    static var previews: some View {
        ACView(isShowing: .constant(true))
        
    }
}
