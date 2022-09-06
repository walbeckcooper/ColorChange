//
//  ContentView.swift
//  ColorChange
//
//  Created by Walbeck, Cooper on 8/24/22.
//

import SwiftUI

struct ColorView: View
{
    @State private var backgroundColor : Color = .white
    var body: some View
    {
        ZStack
        {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack
            {
                Button("Click!", action: changeBackgroundColor)
                Text("Demo of a stack")
                Text("Hello, world!")
                    .padding()
                    
            }
        }
    }
    
    func changeBackgroundColor() -> Void
    {
        self.backgroundColor = makeRandomColor()
    }
    
    func makeRandomColor() -> Color
    {
        let redPercent : Double = (Double ( arc4random() % UInt32 (256) ) / 255.0)
        let greenPercent : Double = (Double ( arc4random() % UInt32 (256) ) / 255.0)
        let bluePercent : Double = (Double ( arc4random() % UInt32 (256) ) / 255.0)
        
        return Color (red: redPercent, green: greenPercent, blue: bluePercent)
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ColorView()
    }
}
