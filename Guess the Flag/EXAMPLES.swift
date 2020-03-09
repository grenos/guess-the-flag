//
//  EXAMPLES.swift
//  Guess the Flag
//
//  Created by Vasileios Gkreen on 07/03/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//



/*
 Gradients are made up of several components:
 An array of colors to show
 Size and direction information
 The type of gradient to use
 */


import SwiftUI

struct EXAMPLES: View {
    
    
    @State private var isShowAlert = false
    
    
    var body: some View {
        
        
        //Color.red is a view in its own right, which is why it can be used like shapes and text. It automatically takes up all the space available, but you can also use the frame() modifier to ask for specific sizes: Color.red.frame(width: 200, height: 200)
        
        ZStack {
            //Color.red.edgesIgnoringSafeArea(.all)
            
            
            LinearGradient(gradient:
                Gradient(colors: [.blue, .red, .yellow]), startPoint: .top, endPoint: .bottom
            ).edgesIgnoringSafeArea(.all)
            
            
            //RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
            
            //AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center).edgesIgnoringSafeArea(.all)
            
            
            
            Button(action: {
                
                self.isShowAlert = true
                
            }) {
                ZStack {
                    RadialGradient(gradient: Gradient(colors: [.white, .blue, .black]), center: .center, startRadius: 1, endRadius: 90)
                    
                    HStack(spacing: 10) {
                        Text("Bob Marley").font(.title)
                            .foregroundColor(.yellow)
                        
                        //SwiftUI will change the color to blue to show that the image is tappable
                        Image(systemName: "pencil").renderingMode(.original)
                    }
                    
                }.frame(width: 200, height: 200)
                
            }.clipShape(Circle()).shadow(radius: 20)
                
                .alert(isPresented: $isShowAlert) {
                    Alert(title: Text("Hello SwiftUI!"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))
                    
            }
            
        }
    }
}

struct EXAMPLES_Previews: PreviewProvider {
    static var previews: some View {
        EXAMPLES()
    }
}
