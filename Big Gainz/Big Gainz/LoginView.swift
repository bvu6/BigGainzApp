//
//  LoginView.swift
//  Big Gainz
//
//  Created by Ben on 4/6/22.
//

import SwiftUI

struct LoginView: View {
    @State private var userName: String = ""
    @State private var userPassword: String = ""

    var body: some View {
        
        VStack{
            Text("Login")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .kerning(1.9)
                .frame(width: UIScreen.main.bounds.width)
            VStack(alignment: .leading, spacing: 8, content:{
                Text("Name")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                TextField("Enter", text:$userName)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(.gray))
                    .padding(.top, 5)
                Divider()
                
                    
                
            })
                .padding(.top, 25)
            VStack(alignment: .leading, spacing: 8, content:{
                Text("Password")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                TextField("Enter", text:$userPassword)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(.gray))
                    .padding(.top, 5)
                Divider()
                
                    
                
            })
                .padding(.top,30)
            
            NavigationLink(destination: SignUpView()){
            Text("Not A Member? Sign Up")
                                .fontWeight(.bold)
                                .foregroundColor(.orange)
                                .multilineTextAlignment(.trailing)
                                


        
            }
            .frame(width: .infinity, alignment: .trailing)
            .padding(.top,10)
            NavigationLink(destination: MainLog()){
           
            Image(systemName: "arrow.right")
                                .font(.system(size:24, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.orange)
                                .clipShape(Circle())

        
            }
            
        }
        .padding()
        .background()
        
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
