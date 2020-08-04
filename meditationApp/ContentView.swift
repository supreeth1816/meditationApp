//
//  ContentView.swift
//  swiftUIAuth
//
//  Created by Supreeth on 01/08/20.
//  Copyright © 2020 Supreeth. All rights reserved.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct ContentView: View {
    var body: some View {
      LoginPage()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






// Hello

struct LoginPage : View {
    
    @State var user = ""
    @State var pass = ""
    
    var body : some View{
    

        
        
        
        VStack {
            
            Text("Mood of the Day")
            
            Text("\"Happy Mood\"")
                .font(.title)
                
            Image("SOSGirl").resizable()
                .frame(width: 280, height: 200)
                .padding([.top], 30)
            
            Text("Login")
                .font(.custom("Futura", size: 30))
                .foregroundColor(Color("Purpl"))
                .padding([.top,.bottom], 20)
   
            
            VStack(alignment: .leading) {
                Text("Email")
                .font(.custom("Futura", size: 18))
                 
                .foregroundColor(Color("Purpl"))
                    
             TextField("Enter Email",
                              text: $user)
            
                Divider()
                
                             
            }
            .padding(.bottom, 15)
            .padding(.horizontal, 10)
            
            VStack(alignment: .leading) {
                
                Text("Password")
                .font(.custom("Futura", size: 18))
                    .foregroundColor(Color("Purpl"))
                    
            SecureField("Enter Password",
                              text: $pass)
                
                Divider()
                    .foregroundColor(.gray)
             
              
                
            }
            .padding(.horizontal, 10)
            .padding(.top, 20)
            
            Button(action: {
                
            }) {
                
                
                Text("Sign In")
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 60).padding()
                    .frame(height: 48)
            }
        .background(Color("Purpl"))
        .cornerRadius(10)
            .padding(.top, 45)
            
            
            Button(action: {
                
            }) {
                Text("Forgot password ? ")
                    .fontWeight(.medium)
                .foregroundColor(Color("Purpl"))
                    .padding(.top, 25)
                
            }
        
          
        }
    }
}

