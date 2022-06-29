//
//  ACView.swift
//  tesla-inspired-MobileApp
//
//  Created by Zahra chouchane on 29/6/2022.
//

import SwiftUI

struct ACView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack{

               
                
                Background()
            
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color("rectanglegradient1"),Color("gradientbg2")]), startPoint: .top, endPoint: .bottom)
                     
              
                    )
                    .cornerRadius(45)
                    .frame(height: 750)
                    .shadow(color: .white.opacity(0.2), radius: 1, x: 0, y: -2)
                    .offset(y: 47)
                  
                    .ignoresSafeArea(.all)
                    .edgesIgnoringSafeArea(.horizontal)
                    
            
                VStack{
                  
                    
                    TopBar(enableSecondBtn: true, iconName1: "text.alignleft", iconName2: "person")
                    
                   

                   Rectangle()
                        .frame(width: 44, height: 5)
                        .cornerRadius(50)
                        .offset(y: 30)
                   

                   
                        
                        
                    Spacer()
                      
                            HeaderPart()
                    Spacer()

                            CircularprogressBar()
                                .padding(.top,50)
                    Spacer()
                            fanSpeedSection()
                    Spacer()

                            ModeSection()
                            
                       
                }.padding()
                .padding(.horizontal,10)
                  
                  
                    
                
                }
            
          
        
           
    }
}

struct ACView_Previews: PreviewProvider {
    static var previews: some View {
       // ACView(isShowing: .constant(true))
        ACView(isShowing: .constant(true))
    }
}

struct HeaderPart: View{
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text("A/C is ON")
                    .foregroundColor(.white)
                    .font(.custom("Lato-Black", size: 24))
                Spacer().frame(height: 8)
                Text("Currently 27'C")
                    .font(.custom("Lato-Regular", size: 18))
                    .foregroundColor(Color("gradientbg1"))
                Text("Will change in 2min")
                    .font(.custom("Lato-Regular", size: 18))
                    .foregroundColor(Color("gradientbg1"))
                
            }
            Spacer()
            Neumorphic_OnOffBtn(width: 70, height: 70)
          
        }
    }
}

struct CircularprogressBar : View{
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    let targetCount: CGFloat = 360
    
    @State private var progressValue:Float = 0.0
  
    
    var body: some View{
        
        ZStack{
      
            progressBar(progressbar: self.$progressValue)
                .frame(width: 160.0, height: 160.0 )
                .padding(20.0).onAppear()
            {
                self.progressValue = 0.30
            }
            
         
            
      
        }
        
    }
}


struct fanSpeedSection: View{
    
    @State private var celsius: Double = 50.0


    var body: some View{
        VStack(alignment: .center)
        {
            
            Text("Fan Speed")
                .foregroundColor(.white)
                .font(.custom("Lato-Black", size: 20))
            Spacer()
                .frame(height: 25)
                
            
          
            HStack(spacing: 66){
                Text("1")
                    .foregroundColor(.white).opacity(0.5)
                    .font(.custom("Lato-Regular", size: 14))
                Text("2")
                    .foregroundColor(.white).opacity(0.5)
                    .font(.custom("Lato-Regular", size: 14))
                Text("3")
                        .foregroundColor(.white).opacity(0.5)
                        .font(.custom("Lato-Regular", size: 14))

                Text("4")
                        .foregroundColor(.white).opacity(0.5)
                        .font(.custom("Lato-Regular", size: 14))
                Text("5")
                        .foregroundColor(.white).opacity(0.5)
                        .font(.custom("Lato-Regular", size: 14))
    
               
            }.padding(.bottom,1)
            customSlider()
            
            
            
        }.padding(.top,50)
    }
}


struct customSlider: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("gradientbg2"),Color("gradientbg11")]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(25)
                .frame(width: 320, height: 10)
              
            
            Rectangle()
                .fill(
                        LinearGradient(gradient: Gradient(colors: [Color("BlueBtnStarter"), Color("BlueBtnEnding")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                .cornerRadius(25)
                .frame(width: 150, height: 7)
                .offset(x: -84)
                .shadow(color: .white.opacity(0.1), radius: 1, x: 0, y: 2)
                .shadow(color: .black.opacity(0.7), radius: 1, x: -2, y: -2)
            
            
            
            ZStack{
                
                
             Circle()
                    .stroke(LinearGradient(gradient: Gradient(colors:  [Color("gradientbg2"), Color("gradientbg11")] )
                        ,startPoint: .bottomTrailing, endPoint: .topLeading)
                         , lineWidth: 3)
                    .frame(width: 35, height: 35)
                    .shadow(color: .white.opacity(0.1), radius: 8, x: -3, y:  -3)
               
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [      Color("gradientbg2"),Color("gradientbg11")]), startPoint: .top, endPoint: .bottom))
                
                    .frame(width: 35, height: 35)
                
               
                
         
                          
                        
                Circle()
                    .foregroundColor(Color("BlueBtnEnding"))
                    .frame(width: 5, height: 5)
                            
               

               
                
               
            }.offset(x: 0, y:0)
              
        }
      
    }
}


struct ModeSection: View{
    var body: some View{
        
        VStack{
            Text("Mode")
                .foregroundColor(.white)
                .font(.custom("Lato-Black", size: 20))
            
        
        HStack(spacing: 30){
            VStack{
                Text("Auto")
                    .font(.custom("Lato-Regular", size: 18))
                    .foregroundColor(.white.opacity(0.5))
                
                neumorphicAutoBtn()
                
            }
            VStack{
                Text("Dry")
                    .font(.custom("Lato-Regular", size: 18))
                    .foregroundColor(.white.opacity(0.5))
                
                insideNeumorphicBtn(iconName: "wind")
                
                
            }
            VStack{
                Text("Cool")
                    .font(.custom("Lato-Regular", size: 18))
                    .foregroundColor(.white.opacity(0.5))
                
                insideNeumorphicBtn(iconName: "snowflake.circle")
                
                
            }
            VStack{
                Text("Program")
                    .font(.custom("Lato-Regular", size: 18))
                    .foregroundColor(.white.opacity(0.5))
                
                insideNeumorphicBtn(iconName: "alarm")
                
                
            }
            
        }
        }
    }
}

struct neumorphicAutoBtn: View{
    var body: some View{
            
          
                ZStack{
                  
                 ZStack{
                    /*    Image(systemName: "lock")
                            .opacity(1)
                            .font(.system(size: 30))
                            .foregroundColor(.white.opacity(0.5))*/
                     Text("A")
                         .opacity(1)
                         .font(.system(size: 20))
                         .foregroundColor(.white)
                         .shadow(color: .white, radius: 5, x: 0, y: 0)
         
                        
                    }
                 .frame(width: 65, height: 65)
                    .background(
                        SwiftUI.ZStack{
                            LinearGradient(gradient: Gradient(colors: [Color("BlueBtnStarter")
                                ,Color("BlueBtnEnding")
                                ])
                                           , startPoint: .topLeading, endPoint: .bottomTrailing)
                          
                                                
                    
                            Circle()
                              
                                .stroke(LinearGradient(gradient: Gradient(colors:  [Color("BlueBtnStarter"), Color("BlueBtnEnding")] )
                                    ,startPoint: .bottomTrailing, endPoint: .topLeading)
                                     , lineWidth: 7)
                           
                            
                                 
                                .shadow(color: .white.opacity(0.1), radius: 8, x: -3, y:  -3)
                            
                    
                            
                            
                        }
                    )
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .trim(from: 1, to: 1)
                            .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 5, lineCap: .round))
                            .frame(width: 88, height: 88)
                            .rotationEffect(Angle(degrees: 90))
                            .rotation3DEffect(Angle(degrees: 180), axis: (x:1, y:0, z: 0))
                            .shadow(color: Color(#colorLiteral(red: 0.5112470388, green: 0.5022565722, blue: 1, alpha: 1)), radius: 5, x: 3, y: 3)
                            .animation(.easeInOut)
                    )
                    
                    //.shadow(color: Color("gradientbg2").opacity(0.1), radius: 1, x: 1, y: 1)
                    .scaleEffect( 1)
                    .shadow(color: .white.opacity(0.05), radius: 17, x: -15, y: -18)
                    
                    .shadow(color: .black.opacity(0.7)
                            , radius: 17, x: 14, y: 20)
                    .scaleEffect( 1)

                   

                
                
                            
                         
                                
                           
                                
                        }

                         
                
        
    }
}


struct insideNeumorphicBtn: View{
    
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
            .frame(width: 65, height: 65)
            .background(
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [Color("gradientbg11")
                        ,Color("gradientbg2")
                        ])
                                   , startPoint: .topLeading, endPoint: .bottomTrailing)
                  
                                        
            
                    Circle()
                      


                        .stroke(LinearGradient(gradient: Gradient(colors: [Color("gradientbg2").opacity(0.3)
                                                                             ,Color("gradientbg2").opacity(0.3)
                                                                             ])
                                                                                        , startPoint: .bottomTrailing, endPoint: .topLeading)
                                    , lineWidth: 3)
                          
                         
                        .shadow(color: .black.opacity(0.2), radius: 1, x: 0, y:  0)
                    
            
                    
                    
                }
            )
            .clipShape(Circle())
            
            .shadow(color: Color("gradientbg2").opacity(0.1), radius: 1, x: 1, y: 1)
            
        .shadow(color: .white.opacity(0.1), radius: 19, x: -10, y: -18)
            
        .shadow(color: .black.opacity(0.6)
                , radius: 17, x: 14, y: 20)
            
        }
      
    
        
    }
    
}



