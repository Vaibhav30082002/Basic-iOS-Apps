//
//  ContentView.swift
//  Card
//
//  Created by Vaibhav Shah on 26/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack{
                Color(red: 0.91, green: 0.30, blue: 0.24)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    
                    Image("images")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150, alignment: .center)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    
                    Text("Vaibhav Shah")
                        .font(Font.custom("Pacifico-Regular", size: 40))
                        .bold()
                        .foregroundColor(.white)
                    
                    Text("iOS Developer")
                        .foregroundColor(.white)
                        .font(.system(size: 25
                        ))
                    Divider()
                    InfoView(text: "+91 7016202620", imageName: "phone.fill")
                    InfoView(text: "vaibhavshah98335@gmail.com", imageName: "envelope.fill")
                }
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    
    let text : String
    let imageName : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack{
                Image(systemName: imageName)
                    .foregroundColor(.red)
                Text(text)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
