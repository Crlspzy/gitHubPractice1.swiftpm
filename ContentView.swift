import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var number = 0
    @State var clicks = 1
    var body: some View {
        Image("ball")
            .resizable()
            .frame(width: 150, height: 150)
            .border(Color.cyan, width: 5)
        
        
        Text("\(number)")
        Text("Evan")
            .font(.system(size: 50, weight: .light, design: .serif))
            .foregroundStyle(.blue)
        Text("Olivia")
            .font(.custom("American Typewriter", size: 70))
            .foregroundStyle(.pink)
        TextField("name", text: $name)
            .textFieldStyle(.roundedBorder)
            .font(.title2)
        Text(name)
        
        
        Button {
            name = ""
        } label: {
            Text("Clear")
                .foregroundStyle(.blue)
                .font(.system(size: 30, weight: .bold, design: .monospaced))
            
        }
        Image(systemName: "arrow.up")
            .font(.system(size: 100, weight: .bold, design: .default))
            .onTapGesture {
                number += clicks
            }
        Text("x2")
            .font(.system(size: 50, weight: .bold, design: .default))
            .onTapGesture {
                
                if number < 10 {
                    clicks = clicks
                } else {
                    clicks *= 2
                    number -= 10
                }
            }
    }
}
