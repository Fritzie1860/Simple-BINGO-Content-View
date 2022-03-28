//
//  ContentView.swift
//  BINGO
//  Challenge 13 from Code With Chris Class
//  Created by Fritzie Primananda Adi Praja on 28/03/22.

import SwiftUI

struct ContentView: View {
    @State var pict1 = "1"
    @State var pict2 = "1"
    @State var pict3 = "1"
    @State var score = 100
    
    var body: some View {
        ZStack{
           
            Image("bg")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Bingo Oppa Score")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.858, saturation: 0.297, brightness: 0.76)/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                Spacer()
                HStack{
                    Spacer()
                    Image(pict1)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(pict2)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(pict3)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                Spacer()
                Text("Your Score")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.759, green: 0.532, blue: 0.725))
                Text(String(score))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Spacer()
                Button(action: {
                    // Update
                    let a = Int.random(in: 2..<7)
                    let b = Int.random(in: 2..<7)
                    let c = Int.random(in: 2..<7)
                    
                    pict1 = String(a)
                    pict2 = String(b)
                    pict3 = String(c)
                    
                    if pict1==pict2&&pict1==pict3{
                        if pict1=="2"||pict1=="3"{
                            score-=2
                        }
                        else{
                            score+=5
                        }
                    }
                    else{
                        score-=1
                    }
                   
                    
                },
                       label: {
                    HStack{
                        Image(systemName: "arrowtriangle.right.circle.fill")
                            .resizable(capInsets: EdgeInsets(top: 1.0, leading: 0.0, bottom: 1.0, trailing: 0.0))
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color(red: 0.954, green: 0.215, blue: 0.844))
                            .frame(width: 100.0)
                    }
                })
                Spacer()
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13 mini")
    }
}

