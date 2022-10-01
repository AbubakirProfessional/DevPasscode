//  ContentView.swift
//  DeveloperPasscode
//
//  Created by Abubakir Ro'ziboyev on 01/10/22.

//
//  Roziboyev Dev
//  For instagram: roziboyev_developer

import SwiftUI

struct ContentView: View {
    var body: some View {
        FinalView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct FinalView: View {
    @State private var pin1 : String = ""
    @State private var pin2 : String = ""
    @State private var pin3 : String = ""
    @State private var pin4 : String = ""
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            
            Circle()
                .foregroundColor(Color("bg"))
                .frame(width: 500, height: 500)
                .offset(x: 0, y: -300)
            
            
            Text("R o z i b o y e v  D e v")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .offset(x: 0, y: -300)
            
            ViewTwo().offset(x: 0, y: -60)
            
            ZStack{
                
                
                
            ZStack{
               
                
           
            if !pin1.isEmpty {
                Image("rasm")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                   
                   }
                
              
               
            
            if !pin2.isEmpty {
                Image("rasm")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                    
                   }
                
               
            
            if !pin3.isEmpty {
                Image("rasm")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                    
                   }
              
               
            
            
            if !pin4.isEmpty { // <1>
                Image("rasm")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                    
                   }
                
               
            }
            
            if ((pin1+pin2+pin3+pin4) == "1234")
            {
                   ViewOne()
                    

                }
            } .offset(x: 0, y: -60)
                
            
            
            Text("E N T E R   P I N")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.red)
                .offset(x: -80, y: 170)
        
        HStack{

            TextField("0", text: $pin1)
                .foregroundColor(.white)
                .offset(x: 10, y: 0)
                .frame(width: 30, height: 50)
                .padding()
                                .border(Color.red, width: 5)
            
            TextField("0", text: $pin2)
                .foregroundColor(.white)
                .offset(x: 10, y: 0)
                .frame(width: 30, height: 50)
                .padding()
                       .border(Color.red, width: 5)
           
            TextField("0", text: $pin3)
                .foregroundColor(.white)
                .offset(x: 10, y: 0)
                .frame(width: 30, height: 50)
                .padding()
                .border(Color.red, width: 5)
            
            TextField("0", text: $pin4)
                .foregroundColor(.white)
                .offset(x: 10, y: 0)
                .frame(width: 30, height: 50)
                .padding()
                       .border(Color.red, width: 5)
            
            ZStack{
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 70, height: 30)
                
                if ((pin1+pin2+pin3+pin4) == "1234")
                {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 40, height: 30)
                        .foregroundColor(.red)
                       
                }
                
                if ((pin1+pin2+pin3+pin4) != "1234")
                {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.red)
                       
                }
            }
                
          }  .offset(x: 0, y: 250)
            
        }
    }
}


//
