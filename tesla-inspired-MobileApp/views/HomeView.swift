//
//  HomeView.swift
//  tesla-inspired-MobileApp
//
//  Created by Zahra chouchane on 26/6/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
     NavigationView{
        ZStack{
            Background()
            VStack{
                HStack {
                         Spacer()
                    TopBar(enableSecondBtn: false, iconName1: "gearshape", iconName2: "person")
                }.padding()
                Spacer()
              
                
                HomeContent()
               Spacer()
                Unlock().offset(y:18)
                
               
              // Spacer()
            }
                .padding(.top,-120)
                .padding()
            
           
        }
     }.navigationViewStyle(.stack)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline) // Here

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct HomeContent: View{
    var body: some View{
        
        VStack{
          
            Header(textSize: 24, carTxtSize: 50)
            ZStack{
                Text("297")
                .foregroundColor(Color("textColor"))
                .font(.custom("Gilroy-UltraLight", size: 188))
                
                .offset(y: -60)
                
              
            
                picture()
              
        
      
            }
              
           
            
           
            
        }
 
    }
}

struct Unlock: View {
    var body: some View {
        VStack {
            Text("A/C is turned on")
                .foregroundColor(Color("gradientbg1"))
                .font(.custom("Lato-Regular", size: 24))
                .offset(y:-15)
            
            neumorphic_unlock_btn(width: 128, height: 128)
            
            Text("Tap to open the car")
                .foregroundColor(.white)
                .font(.custom("Lato-Black", size: 18))
            
        }
    }
}

struct Header: View {
    
    var textSize: Double
    var carTxtSize : Double
    
    var body: some View{
        VStack{
            Text("Tesla")
                .foregroundColor(.gray)
                .font(.custom("Lato-Regular", size: textSize))
            
            Text("Cybertruck")
                .foregroundColor(.white)
                .font(.custom("Lato-Black", size: carTxtSize))
        }
       
    }
}


struct picture: View{
    var body: some View{
        
        ZStack{
            
            HStack {
                Rectangle()
                
                    .frame(width: 100, height: 35)
                    .offset(x: 50, y: 180)
                    //.foregroundColor(.gray)
                .blur(radius: 24    )
                
                Rectangle()
                    .frame(width: 310, height: 35)
                    .offset(x: 75, y: 190)
                .blur(radius: 17)
            }

            Image("cybertruckhome")
                    .offset(x: 50, y: 60)
            
            Image("light1")
                .shadow(color: .white, radius: 1, x: 0, y: 0)
                .offset(x: -145, y: 30)
        
            Rectangle()
                .blur(radius: 18)
                .foregroundColor(.cyan)
                .frame(width: 55, height: 10)
                .offset(x: -145, y: 30)

          



        }
     
        
    }
}
