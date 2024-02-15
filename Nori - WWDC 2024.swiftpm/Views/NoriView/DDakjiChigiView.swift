//
//  SwiftUIView 2.swift
//  
//
//  Created by 이재영 on 1/26/24.
//

import SwiftUI

struct DDakjiChigiView: View {
    @State var isButtonClicked = false
    @State var isToggleOn = false
    
    var body: some View {
        splitView
    }
    
    // MARK: 뷰 두개로 나누기
    var splitView: some View {
        HStack(spacing: 0) {
            leftView
                .frame(maxWidth: .infinity)
            
            verticalDivider()
            
            rightView
                .frame(maxWidth: .infinity)
        }
        .ignoresSafeArea()
    }
    
    var leftView: some View {
        VStack {
            pageHeader
            
            horizontalDivider()
            
            textView
        }
    }
    
    var rightView: some View {
        ZStack {
            VStack {
                if !isButtonClicked {
                    Text("Click the button to watch AR simulation of DDakjiChigi")
                        .font(.largeTitle)
                        .padding()
                    Button {
                        isButtonClicked = true
                        print("Button Clicked - \(isButtonClicked)")
                    } label: {
                        Text("Show up AR View")
                    }
                    .padding(30)
                    .bold()
                    .font(.title)
                    .frame(height: 80)
                    .foregroundColor(.black)
                    .background(.orange)
                    .cornerRadius(15)
                    .shadow(color: .orange, radius: 15, y: 5)
                }
                
                if isButtonClicked {
                    DDakjiChigiARView()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
    
    var pageHeader: some View {
        VStack{
            Image("DDakjiChigi")
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .padding(.top, 20)
            
            Text("Nori")
                .font(.caption)
                .foregroundColor(.secondary)
            
            Text("DDakjiChigi")
                .font(.title2).fontWeight(.semibold)
            
        }
        //        .padding(.top)
    }
    
    var textView: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("DDakjiChigi").bold().foregroundColor(.brown) + Text(" has been enjoyed by children for generations, providing entertainment, skill development, and cultural connection. It is often played during festive occasions and leisure time.")
                
                horizontalDivider()
                
                VStack(spacing: 23) {
                    Text("Game Components")
                        .gameDescriptionTitle()
                    
                    Text("- DDakji").bold() + Text(": Ddakji are small, rectangular paper tiles, often decorated with colorful designs or patterns. These tiles are typically thicker and sturdier than regular paper, allowing them to withstand the impact of flipping.")
                         
                    Text("- Striking Tool").bold() + Text(": Players usually use their own hand to strike their ddakji and flip opponents' tiles and in some case, they use a small handheld tool, such as a wooden paddle or their own hand.")
                    
                    VStack(spacing: 0) {
                        Image("DDakjiImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 280)
                            .padding()
                        
                        Text("< Image of DDakji >")
                            .foregroundColor(.secondary)
                    }
                }
                
                horizontalDivider()
                
                VStack(spacing: 23) {
                    Text("Objective")
                        .gameDescriptionTitle()
                    
                    Text("The goal of DDakjiChigi is to strategically flip opponents' ddakji while protecting one's own. Players aim to use their skill and strategy to overturn as many opponent's ddakji as possible, ultimately claiming victory")
                }
                
                horizontalDivider()
                
                VStack(spacing: 23) {
                    Text("Gameplay")
                        .gameDescriptionTitle()
                    
                    Text("Players take turns standing around the playing area, each selecting a DDakji to flip. players strike their selected ddakji with precision, aiming to flip it over and potentially land on top of opponents' ddakji.")
                    
                    HStack {
                        Rectangle()
                            .foregroundColor(.accentColor)
                            .frame(width: 5)
                            .cornerRadius(10)
                            .padding(1)
                        VStack(alignment: .leading){
                            Text("Addition")
                                .lineSpacing(3.5)
                                .font(.footnote)
                                .foregroundColor(.secondary)
                            Text("The number of DDakji is determined with the opponent, but the game is usually played with 3 or 4 DDakji.")
                                .padding(.top, 2)
                        }
                        .padding(5)
                    }
                    .padding(10)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                    
                    Text("Successful flips result in the player claiming the overturned ddakji as their own. The game continues with each player taking turns until all ddakji have been flipped or until a predetermined number of rounds have been played.")
                    
                    Text("The player with the most flipped ddakji at the end of the game is declared the winner.")
                }
                
            }
            .padding(25)
            
            Toggle("Got it!", isOn: $isToggleOn)
                .bold()
                .frame(width: 200)
                .padding()
                .background(isToggleOn ? Color.green : Color.brown)
                .cornerRadius(15)
                .padding()
        }
    }
    
}




#Preview {
    DDakjiChigiView()
}
