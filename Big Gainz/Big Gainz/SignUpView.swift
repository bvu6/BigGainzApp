//
//  SignUpView.swift
//  Big Gainz
//
//  Created by Ben on 4/18/22.
//

import SwiftUI

struct SignUpView: View {
    @State private var userName: String = ""
    @State private var userPassword: String = ""
    @State private var userAge: String = ""
    @State private var userHeight: String = ""
    @State private var userWeight: String = ""
    var body: some View {
        
        VStack{
            Text("Register")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .kerning(1.9)
                .frame(width: UIScreen.main.bounds.width)
                .padding(.bottom, 25)
                .padding(.top, 25)
            VStack(alignment: .leading, spacing: 8, content:{
                Text("Name")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                TextField("Enter", text:$userName)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(.black))
                    .padding(.top, 5)
                Divider()
                
                    
                
            })
                .padding(.top, 25)
            VStack(alignment: .leading, spacing: 8, content:{
                            Text("Age")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            TextField("Enter", text:$userAge)
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(Color(.black))
                                .padding(.top, 5)
                            Divider()
                            
                                
                            
                        })
                            .padding(.top,20)
                        VStack(alignment: .leading, spacing: 8, content:{
                            Text("Height")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            TextField("Enter", text:$userHeight)
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(Color(.black))
                                .padding(.top, 5)
                            Divider()
                            
                                
                            
                        })
                            .padding(.top,15)
                        VStack(alignment: .leading, spacing: 8, content:{
                            Text("Weight")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            TextField("Enter", text:$userWeight)
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(Color(.black))
                                .padding(.top, 5)
                            Divider()
                            
                                
                            
                        })
                .padding(.top,20)
                .padding(.bottom,20)

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
        //.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.gray)
        
    }

}

struct SignView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
