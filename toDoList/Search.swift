//
//  Search.swift
//  Weather Bee
//
//  Created by scholar on 7/20/23.
//

import SwiftUI

struct Search: View {
    var body: some View {

    ZStack {
    
    Color("NewTan")
        .ignoresSafeArea()
    
                VStack {
                Text("Fashion Report")
                    .fontWeight(.black)
                    .foregroundColor(Color("NewRed"))
                    .font(.largeTitle)
                    .padding(.top)
                    
                    
                    HStack {
                        
                    } //hstack
                    
                    HStack {
                        
                        VStack {
                                    
                            Image("image 1")
                                .padding(.vertical, 50.0)
                            
                            
                            Image("outfit1")
                                .cornerRadius(20.0)
                                
                            
                            Spacer()
                                
                            Image("outfit2")
                                .cornerRadius(20.0)

                                
                                Spacer()
                                Spacer()
                                
                            Image("outfit3")
                                .cornerRadius(20.0)


                            
                        } //vstack
                        

                        .padding(.leading, 55.0)

                        Spacer()
                        
                        VStack {
                            
                            Image("weather")
                                .padding(.top, -10.0)

                            Spacer()
                            
                            Image("outfit4")
                                .cornerRadius(20.0)

                            
                            Spacer()
                            Spacer()
                            
                            Image("outfit5")
                                .cornerRadius(20.0)

                            Spacer()
                            
                        } //vstack

                        .padding([.top, .bottom, .trailing], 55.0)
                        
                    } //hstack
                
                    Spacer()
                    
            } //vstack
            
        } //zstack

    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
