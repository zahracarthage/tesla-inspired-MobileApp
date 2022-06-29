//
//  neumorphic-unlock-btn.swift
//  tesla-inspired-MobileApp
//
//  Created by Zahra chouchane on 28/6/2022.
//

import SwiftUI

struct neumorphic_unlock_btn: View {
    @GestureState var tap = false
    @State var press = false
    @State var tapped = false
    var width: Double
    var height : Double
    
    var body: some View {
        
        ZStack{
          
            ZStack{
                Image(systemName: "lock")
                    .opacity(press ? 0 : 1)
                    .scaleEffect(press ? 0 : 1)
                    .font(.system(size: 30))
                    .foregroundColor(.white.opacity(0.5))
                  
                
                Image(systemName: "lock")
                    .clipShape(Rectangle().offset(y: tap ? 0 : 50))
                    .animation(.easeInOut)
                    .opacity(press ? 0 : 1)
                    .scaleEffect(press ? 0 : 1)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 44, weight: .light))
                    .foregroundColor(.white)
                    .opacity(press ? 1 : 0)
                    .scaleEffect(press ? 1 : 0)
                
                
            }
            .frame(width: 128, height: 128)

           // .frame(width: 128, height: 128)
            .background(
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [Color("BlueBtnStarter")
                        ,Color("BlueBtnEnding")
                        ])
                                   , startPoint: .topLeading, endPoint: .bottomTrailing)
                  
                                        
            
                    Circle()
                      
                        .stroke(LinearGradient(gradient: Gradient(colors:  [Color("BlueBtnStarter"), Color("BlueBtnEnding")] )
                            ,startPoint: .bottomTrailing, endPoint: .topLeading)
                             , lineWidth: 11)
                   
                    
                         
                        .shadow(color: .white.opacity(0.1), radius: 8, x: -3, y:  -3)
                    
            
                    
                    
                }
            )
            .clipShape(Circle())
            .overlay(
                Circle()
                    .trim(from: tap ? 0.001 : 1, to: 1)
                    .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 5, lineCap: .round))
                    .frame(width: 88, height: 88)
                    .rotationEffect(Angle(degrees: 90))
                    .rotation3DEffect(Angle(degrees: 180), axis: (x:1, y:0, z: 0))
                    .shadow(color: Color(#colorLiteral(red: 0.5112470388, green: 0.5022565722, blue: 1, alpha: 1)), radius: 5, x: 3, y: 3)
                    .animation(.easeInOut)
            )
            
            //.shadow(color: Color("gradientbg2").opacity(0.1), radius: 1, x: 1, y: 1)
            .scaleEffect(tap ? 1.2 : 1)
            .shadow(color: .white.opacity(0.05), radius: 17, x: -15, y: -18)
            
            .shadow(color: .black.opacity(0.7)
                    , radius: 17, x: 14, y: 20)
            .scaleEffect(tap ? 1.2 : 1)

           

        }
        .gesture(
            LongPressGesture().updating($tap) {
                currentState, gestureState, transaction in
                gestureState = currentState
             
                

                
            }

                .onEnded {
                    value in self.press.toggle()
                   // press.toggle()

                    print("ended")
                    
                   // tapped = true
                    
                    tapped.toggle()

                    print(tapped)
                  
                    
                 
                        
                   
                        
                }

        )
        NavigationLink("", destination: CarView()
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)
                       ,
                       isActive: $tapped
                       
            
        )  .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        
        
        
    
    
        
    }
    
        
           
     
    }


struct neumorphic_unlock_btn_Previews: PreviewProvider {
    static var previews: some View {
      //  neumorphic_unlock_btn()
        HomeView()
    }
}
