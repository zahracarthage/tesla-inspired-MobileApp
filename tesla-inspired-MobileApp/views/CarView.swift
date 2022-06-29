//
//  CarView.swift
//  tesla-inspired-MobileApp
//
//  Created by Zahra chouchane on 28/6/2022.
//

import SwiftUI

struct CarView: View {
    var body: some View {
            
 
        ZStack{
            Background()
            VStack{
                
            
            VStack(alignment: .leading){
                TopBar(enableSecondBtn: true, iconName1: "text.alignleft", iconName2: "person")
                
                carImage()
                statusDescription()
                informationSection()
               
               
            }.padding()
                bottomView()
            }
           
        }
        
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView()
    }
}


struct SwipeUp: View{
    @State private var showModal: Bool = false
    
    var body: some View{
        Button(action: {showModal = true})
        {
            Text("Click me")
                .foregroundColor(.white)
        }
        ACView(isShowing: $showModal)
    }
}

struct carImage : View
{
    var body: some View{
        
        ZStack(alignment: .center){
            
           
          

            
            Image("carshadow")
             .offset(y:90)

           Image("cybertruk2")
               // .resizable()
              //  .frame(width: 300.32, height: 180, alignment: .center)
                .offset(x:0)
            
              //
           
                
            Rectangle()
                .blur(radius: 18)
                .foregroundColor(.cyan)
                .frame(width: 200, height: 10)
                .offset(x: 50, y: -18)
            
            
            
        }.padding(.top,50)
           .padding(.leading,30)
        
      
        
    }
}

struct statusDescription: View{
    var body: some View{
        
        VStack(alignment: .leading){
            Text("Status")
                .font(.custom("Lato-Black", size: 24))
                .foregroundColor(.white)
            
            
            HStack(spacing: 15){
                Card(picName: "battery.100", picText: "Battery", Text: "54%")
                Card(picName: "location.fill", picText: "Range", Text: "297 km")
                Card(picName: "thermometer.low", picText: "Temperature", Text: "27`C")
             


            }
            
           
        }.padding(.top,20)
        
    }
}


struct Card: View{
   var picName: String
    var picText: String
    var Text: String
    
    var body: some View{
        
        HStack(alignment: .firstTextBaseline){
            
            Image(systemName: picName)
                .foregroundColor(Color("gradientbg1"))
            
            VStack(alignment: .leading){
               
                SwiftUI.Text(picText)
                .foregroundColor(Color("gradientbg1"))
                .font(.custom("Lato-Regular", size: 18))
                              
                
               SwiftUI.Text(Text)
                    .foregroundColor(.white)
                    .font(.custom("Lato-Black", size: 18))
            }

            }
           
        
    }
}


struct informationSection : View{
    var body: some View{
        
        VStack(alignment: .leading){
            
            Text("Information")
                .font(.custom("Lato-Black", size: 24))
                .foregroundColor(.white)
            
            HStack(spacing: 30){
            informationCardCirlce()
            informationCardRectangle()
            informationCardTriangle()
            
            }.frame(width: 400, height: 200, alignment: .leading)
           
         
               
              
         
                   
              

            
        }.padding(.top,30)
       
        
    }
}


struct informationCardCirlce : View{
    
    var body: some View{
        
        
                    
                    
                   /* VStack(spacing: 10){
                        Text("Engine")
                            .foregroundColor(.white)
                        Text("Sleeping mode")
                            .foregroundColor(Color("gradientbg1"))
                            .font(.custom("Lato-Regular", size: 18))*/
        
    
        Text("")
            .font(.custom("Lato-Black", size: 18))
            .foregroundColor(.white)
            .frame(width: 150, height: 160)
            .offset(y:20)

        
            .background(
                
                ZStack {
                    
                   
                    
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                    
                        .foregroundColor(.white)
                      //  .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    
                    
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("cardStartingColor"), Color("cardEndingcolor")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    
                    
                    
                     //   .padding(2)
                      //  .blur(radius: 2)
                    
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("circleColorOne"), Color("circleColorTwo")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 149, height: 149)
                        .offset(x: -30, y: 25)
                    
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("circleColorOne"), Color("circleColorTwo")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 149, height: 149)
                        .offset(x: 30, y: 60)
                    
                    VStack(alignment: .leading){
                        Text("Engine")
                            .font(.custom("Lato-Black", size: 18))
                            .foregroundColor(.white)
                        
                        Text("Silent mode")
                            .foregroundColor(Color("gradientbg11"))
                            .font(.custom("Lato-Regular", size: 16))
                           

                    }.offset(x: -20, y: 40)
                    
                   
                    
                    
                }
            )
        
        
      
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
        
            .shadow(color:Color("gradientbg1").opacity(0.1)
                        ,radius: 10, x: -15, y : -20)
        
            .shadow(color: .black, radius: 30, x: 20, y: 20)
                              

             
                
            }
                     
    
}

struct informationCardRectangle : View{
    
    var body: some View{
        
        
     
        

        
        
            Text("")
                .font(.custom("Lato-Black", size: 18))
                .foregroundColor(.white)
                .frame(width: 150, height: 160)           .offset(y:20)

            .background(
                
                ZStack {
                    
                   
                    
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                    
                        .foregroundColor(.white)
                      //  .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    
                    
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("cardStartingColor"), Color("cardEndingcolor")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    
                    
                    
                     //   .padding(2)
                      //  .blur(radius: 2)
                    
                    Rectangle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("circleColorOne"), Color("circleColorTwo")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 120, height: 120)
                        .offset(x: -50, y: -5)
                        .rotationEffect(Angle(degrees: -30))
                    
                   Rectangle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("circleColorOne"), Color("circleColorTwo")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 120, height: 120)
                        .offset(x: 10, y: 50)
                        .rotationEffect(Angle(degrees: -30))
                    
                    VStack(alignment: .leading){
                        Text("Climate")
                            .font(.custom("Lato-Black", size: 18))
                            .foregroundColor(.white)
                        
                        Text("A/C is ON")
                            .foregroundColor(Color("gradientbg11"))
                            .font(.custom("Lato-Regular", size: 16))
                           

                    }.offset(x: -20, y: 40)
                    
                   
                
                    
                    
                }
            )
        
        
      
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
        
            .shadow(color:Color("gradientbg1").opacity(0.1)
                        ,radius: 10, x: -15, y : -20)
        
            .shadow(color: .black, radius: 30, x: 20, y: 20)
                              

             
                
            }
                     
    
}

struct informationCardTriangle : View{
    
    var body: some View{
        
        
     
          
                    
                   /* VStack(spacing: 10){
                        Text("Engine")
                            .foregroundColor(.white)
                        Text("Sleeping mode")
                            .foregroundColor(Color("gradientbg1"))
                            .font(.custom("Lato-Regular", size: 18))*/
        
        
            Text("")
                .font(.custom("Lato-Black", size: 18))
                .foregroundColor(.white)
                .frame(width: 150, height: 160)
            .background(
                
                ZStack {
                    
                   
                    
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                    
                        .foregroundColor(.white)
                      //  .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    
                    
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("cardStartingColor"), Color("cardEndingcolor")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    
                    
                    
                     //   .padding(2)
                      //  .blur(radius: 2)
                    
                    Triangle()
                        .fill( LinearGradient(gradient: Gradient(colors: [Color("circleColorTwo"), Color("circleColorOne")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                
                        .frame(width: 90, height: 95)
                        .rotationEffect(Angle(degrees: -180))

                        //.offset(x: -30, y: 25)
                    
                    Triangle()
                        .fill( LinearGradient(gradient: Gradient(colors: [Color("circleColorTwo"), Color("circleColorOne")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                
                        .frame(width: 120, height: 125)
                        .rotationEffect(Angle(degrees: -180))
                        .offset(y: 65)
                    
                    VStack(alignment: .leading){
                        Text("Tires")
                            .font(.custom("Lato-Black", size: 18))
                            .foregroundColor(.white)
                        
                        Text("Low pressure")
                            .foregroundColor(Color("gradientbg11"))
                            .font(.custom("Lato-Regular", size: 16))
                           

                    }.offset(x: -10, y: 40)
                    
                   
                    
                
                    
                    
                }
            )
        
        
      
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
        
            .shadow(color:Color("gradientbg1").opacity(0.1)
                        ,radius: 10, x: -15, y : -20)
        
            .shadow(color: .black, radius: 30, x: 20, y: 20)
                              

             
                
            }
                     
    
}


struct bottomView: View{
    
    var body: some View{
        
        
            
        
        ZStack{
          

            
            Rectangle()
                .fill(
                   LinearGradient(gradient: Gradient(colors: [Color("rectanglegradient1"),Color("gradientbg2")]), startPoint: .top, endPoint: .bottom)
                
          
                )
                .cornerRadius(45)
                .frame(width: 420, height: 120)
                .shadow(color: .white.opacity(0.2), radius: 1, x: 0, y: -2)
                .offset(y:17)
              
                .ignoresSafeArea(.all)
                .edgesIgnoringSafeArea(.horizontal)
            
        
           
            
            headerSection()
                .offset(y:14)
            
           Rectangle()
                .frame(width: 44, height: 5)
                .cornerRadius(50)
                .offset(y: -30)
           
                
        }
        
    
        
    }
}

struct headerSection: View{
    var body: some View{
        HStack(){
            VStack(alignment: .leading){
                Text("A/C is ON")
                    .foregroundColor(.white)
                    .font(.custom("Lato-Black", size: 18))
                Spacer().frame(height: 8)
                Text("Currently 27'C")
                    .font(.custom("Lato-Regular", size: 15))
                    .foregroundColor(Color("gradientbg1"))
                Text("Will change in 2min")
                    .font(.custom("Lato-Regular", size: 15))
                    .foregroundColor(Color("gradientbg1"))
                
            }
            Spacer()
                .frame(width: 150)
            Neumorphic_OnOffBtn(width: 70, height: 70)
               
          
        }
    }
}
