//
//  TopBar.swift
//  tesla-inspired-MobileApp
//
//  Created by Zahra chouchane on 26/6/2022.
//

import SwiftUI

struct TopBar: View {
    
   /* var header: String
    var fontSize: Double
    var headerColor: Color*/
    
    var enableSecondBtn: Bool
    var iconName1: String
    var iconName2: String
    
    var body: some View {
           

            
                HStack {
                    CircleButtonNeumorphic(iconName: iconName1)
                   
                    if enableSecondBtn == true
                    {
                        Spacer()
                        Header(textSize: 18, carTxtSize: 18)

                        Spacer()
                        CircleButtonNeumorphic(iconName: iconName2)
                    }

                        
                   
                }

                   
              
          
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
