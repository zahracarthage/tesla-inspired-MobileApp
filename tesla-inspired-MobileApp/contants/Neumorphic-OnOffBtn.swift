
import SwiftUI

 struct Neumorphic_OnOffBtn: View {
     @State var tap = false
     @State var press = false
     var width: Double
     var height: Double
     
     var body: some View {
         
         ZStack{
           
             ZStack{
                 Image(systemName: "power")
                     .font(.system(size: 22, weight: .bold))
                     .foregroundColor(.white)
                     .offset(x: press ? -90 : 0, y: press ? -90 : 0)
                     .rotation3DEffect(Angle(degrees: press ? 20 : 0), axis: (
                         x: 10, y: -10, z: 0))
                 
                   
                 
                 Image(systemName: "poweroff")
                     .font(.system(size: 22, weight: .light))
                     .foregroundColor(.white.opacity(0.5))
                     .offset(x: press ? 0 : 90, y: press ? 0 : 90)
                     .rotation3DEffect(Angle(degrees: press ? 0 : 20), axis: (
                         x: -10, y: 10, z: 0))
             }
                 
              
                 
                 
             
             .frame(width: width, height: height)
             .background(
                 ZStack{
                     LinearGradient(gradient: Gradient(colors: [Color("BlueBtnStarter")
                         ,Color("BlueBtnEnding")
                         ])
                                    , startPoint: .topLeading, endPoint: .bottomTrailing)
                   
                                         
             
                     Circle()
                       
                         .stroke(LinearGradient(gradient: Gradient(colors:  [Color("BlueBtnStarter"), Color("BlueBtnEnding")] )
                             ,startPoint: .bottomTrailing, endPoint: .topLeading)
                              , lineWidth: 5)
                    
                     
                          
                         .shadow(color: .white.opacity(0.1), radius: 8, x: -3, y:  -3)
                     
             
                     
                     Circle()
                         .stroke(.clear, lineWidth: 10)
                         .shadow(color: Color(press ? .red : .white), radius: 3, x: 3, y:  3)
                     
                 }
             )
             .clipShape(Circle())
             .shadow(color: Color("gradientbg2").opacity(0.05), radius: 1, x: 1, y: 1)
             
               .scaleEffect(tap ? 1.2 : 1)
             
               .shadow(color: .white.opacity(0.08), radius: 17, x: -15, y: -18)
             
             .shadow(color: .black.opacity(0.1)
                     , radius: 14, x: 14, y: 20)
             .scaleEffect(tap ? 1.2 : 1)


             
            
             
             .gesture(
                 LongPressGesture().onChanged{
                     value in
                     self.tap = true
                     DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 ) {
                         self.tap = false
                     }
                 }
                     .onEnded {
                         value in self.press.toggle()
                     }

             )
             
             //.shadow(color: Color("gradientbg2").opacity(0.1), radius: 1, x: 1, y: 1)
             /*   .scaleEffect(tap ? 1.2 : 1)
             .shadow(color: .white.opacity(0.05), radius: 17, x: -15, y: -18)
             
             .shadow(color: .black.opacity(0.7)
                     , radius: 17, x: 14, y: 20)
             .scaleEffect(tap ? 1.2 : 1)*/

            

         }   .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
         

         
        
         
         
         
     
     
         
     }
     
         
            
      
     }


 struct Neumorphic_OnOffBtn_Previews: PreviewProvider {
     static var previews: some View {
       //  neumorphic_unlock_btn()
         ACView(isShowing: .constant(true))
     }
 }

 
