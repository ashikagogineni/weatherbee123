//
//  FashionReport.swift
//  toDoList
//
//  Created by Ashika on 7/19/23.
//

import SwiftUI

struct FashionReport: View {
    @State private var answer = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color("NewTan")
                    .ignoresSafeArea()
                VStack {
                    VStack {
                        Image("fashionImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
//                            .padding()
                        Spacer()
                        
                        Image("questionImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom)
                        Spacer()
                    }
                    Button("☀️"){
                        answer = "Wear shorts and a tank top!"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("LightYellow"))
                    Button("🌤️"){
                        answer = "Bring a light jacket!"
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("LightYellow"))
                    Button("🌦️"){
                        answer = "Bring a thin raincoat!"
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("LightYellow"))
                    Button("☁️"){
                        answer = "Pack a comfy sweater!"
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("LightYellow"))
                    Button("🌧️"){
                        answer = "Don't forget your umbrella!"
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("LightYellow"))
                    Button("🌩️"){
                        answer = "Try staying indoors!"
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("LightYellow"))
                    Button("⛈️"){
                        answer = "Definitely stay indoors if possible!"
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("LightYellow"))
                   
                    Text(answer)
                        .foregroundColor(Color("Blue"))
                        .font(.system(size: 25))
                        .multilineTextAlignment(.center)
                        .frame(width: nil)
                    
                    NavigationLink(destination: Search()){
                        Text("Your Closet")
                            .font(.title2)
                            .fontWeight(.black)
                            .foregroundColor(Color("LightYellow"))
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.bottom, 60.0)
                    .tint(Color("DarkBlue"))

                }
                       
                        .padding()
            }
            HStack{
                   NavigationLink(destination:ContentView()) {
                     Image("home")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(height : 70)
                   }
                   NavigationLink(destination:Profile()){
                     Image("profile")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(height : 70)
                   }
                   NavigationLink(destination:Shopping()) {
                     Image("shop")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(height : 70)
                   }
                   NavigationLink(destination:FashionReport()) {
                     Image("fashion")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(height : 70)
                   }
                    NavigationLink(destination:About()) {
                    Image("about")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height : 70)
                }
                 }//Hstack
        }
    }
}
    struct FashionReport_Previews: PreviewProvider {
        static var previews: some View {
            FashionReport()
        }
    }

