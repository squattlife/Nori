//
//  NamseungdoGame.swift
//  Nori - WWDC 2024
//
//  Created by 이재영 on 2/14/24.
//

import SwiftUI

struct SsanglyugView: View {
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
                    Text("Click the button to watch AR simulation of NamseungdoGame")
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
                    SsanglyugARView()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
    
    var pageHeader: some View {
        VStack{
            Image("NamseungdoGame")
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .padding(.top, 20)
            
            Text("Nori")
                .font(.caption)
                .foregroundColor(.secondary)
            
            Text("NamseungdoGame")
                .font(.title2).fontWeight(.semibold)
            
        }
        //        .padding(.top)
    }
    
    var textView: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("NamseungdoGame").bold().foregroundColor(.brown) + Text(" is a traditional Korean board game that has been enjoyed for centuries. It is a strategic and entertaining game that is often played during festive occasions, family gatherings, and holidays.")
                
                horizontalDivider()
                
                VStack(spacing: 23) {
                    Text("Game Components")
                        .gameDescriptionTitle()
                    
                    Text("- Game Board").bold() + Text(": NamseungdoGame is played on a square board divided into 29 spaces, each representing a unique point in the journey. The central space holds particular significance as the ultimate destination.")
                         
                    Text("- Yut Sticks").bold() + Text(": Four wooden sticks, traditionally marked on one side, are used to determine the player's move. The combination of marked and unmarked sides dictates the number of spaces a player can advance.")
                    
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
                            Text("For the game pieces to indicate the location of the movement according to the results, you can use any small, distinguishable object.")
                                .font(.callout)
                                .padding(.top, 2)
                        }
                        .padding(5)
                    }
                    .padding(10)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                }
                
                horizontalDivider()
                
                Text("Setup")
                    .gameDescriptionTitle()
                
                Text("NamseungdoGame is typically played on a square board divided into 29 spaces. The spaces are arranged in a specific pattern, and each player has four game pieces, usually small sticks or tokens.")
                
                VStack(spacing: 0) {
                    Image("NamseungdoGameBoard")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .padding()
                    
                    Text("< NamseungdoGame Board >")
                        .foregroundColor(.secondary)
                }
                
                
                horizontalDivider()
                
                Text("Objective")
                    .gameDescriptionTitle()
                
                Text("The goal of NamseungdoGame is to move all of your pieces around the board, following a specific path, and eventually reach the center space called 'Bang'")
                
                horizontalDivider()
                
                Text("Gameplay")
                    .gameDescriptionTitle()
                
                Text("Players take turns tossing the four yut sticks onto the board. The combination of flat and rounded sides facing up determines the number of moves the player can make. There are four possible outcomes: Do(도), Gae(개), Geol(걸), and Yut(윷). The player advances their game piece according to the result.")
                
                Spacer()
                
                HStack {
                    VStack {
                        Text("Do (도): 1 space")
                            .bold() .font(.system(size: 20))
                        Image("Do")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Gae (개): 2 spaces")
                            .bold() .font(.title3)
                        Image("Gae")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                    }
                }
                .padding()
                
                
                HStack {
                    VStack {
                        Text("Geol (걸): 3 spaces")
                            .bold() .font(.title3)
                        Image("Geol")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Yut (윷): 4 spaces")
                            .bold() .font(.title3)
                        Image("Yut")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                    }
                }
                .padding()
                
                Text("Mo (모): 5 spaces")
                    .bold() .font(.title3)
                Image("Mo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                       
                Spacer()
                
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
                        Text("There is also a combination called 'Back Do' (빽도), which is the where the player moves backward one space.")
                            .font(.callout)
                            .padding(.top, 2)
                    }
                    .padding(5)
                }
                .padding(10)
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
        
                horizontalDivider()
                
                Text("Obstacles and Strategy")
                    .gameDescriptionTitle()
                
                Text("The board has specific spaces that act as shortcuts or obstacles, adding an element of strategy to the game. Players can also capture their opponent's pieces by landing on the same space, sending them back to the starting point.")
                
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
    SsanglyugView()
}
