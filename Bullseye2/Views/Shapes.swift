//
//  Shapes.swift
//  Bullseye2
//
//  Created by Carlos Mata on 3/7/23.
//

import SwiftUI

struct Shapes: View {
    @State private var wideShapes = true
    var body: some View {
        VStack{
            if !wideShapes {
                Circle()
                    .strokeBorder(Color.blue, lineWidth: 20)
                    .frame(width: 200, height: 100)
                    .background(Color.green)
            }
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            Capsule()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100)
                .animation(.easeIn, value: wideShapes)
            Ellipse()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100)
                .animation(.easeIn, value: wideShapes)
            Button("Animate"){
                withAnimation{
                    wideShapes.toggle()
                }
            }
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
