//
//  ContentView.swift
//  SwiftUILazyHGridViewDemoApp
//
//  Created by ryota on 2023/01/05.
//

import SwiftUI

struct ContentView: View {
    let catsList: [Cat] = [
        Cat(image: "hijiki", name: "ひじき"),
        Cat(image: "thukushi", name: "つくし"),
        Cat(image: "hijiki", name: "ひじき"),
        Cat(image: "thukushi", name: "つくし"),
        Cat(image: "hijiki", name: "ひじき"),
        Cat(image: "thukushi", name: "つくし"),
        Cat(image: "hijiki", name: "ひじき"),
        Cat(image: "thukushi", name: "つくし")]
    
    let columns: [GridItem] = [
        GridItem(.flexible(maximum: 150)),
        GridItem(.flexible(maximum: 150))
    ]
    var body: some View {
        ScrollView(.horizontal)  {
            LazyHGrid(rows: columns, spacing: 5) {
                ForEach(catsList) { cat in
                    VStack {
                        Image(cat.image).resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text(cat.name)
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
