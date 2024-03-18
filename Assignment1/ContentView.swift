//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    
    let emojiArray = ["🤣", "😜", "😀", "🤩", "😂"]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(emojiArray, id:\.self) {emoji in
                    EmojiItem(emojiIcon: emoji)
                }
                
            }
            .listStyle(.grouped)
            .navigationTitle("Emoji Counter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct EmojiItem: View {
    let emojiIcon: String
    @State var counter: Int = 0
    
    var body: some View {
        HStack {
            Text("\(emojiIcon) Counter: \(counter) ")
            Button {
                counter = counter + 1
                print("One More!")
            } label: {
                Text("+")
                .padding()
            }
            .buttonStyle(.bordered)
            Button {
                counter = counter - 1
                print("One Less!")
            } label: {
                Text("-")
                .padding()
            }
            .buttonStyle(.bordered)
        }
    }

}
