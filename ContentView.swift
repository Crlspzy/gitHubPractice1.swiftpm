import SwiftUI

struct ContentView: View {
    @State var name = ""
    var body: some View {
     Text("Evan")
            .font(.system(size: 50, weight: .light, design: .serif))
            .foregroundStyle(.blue)
        Text("Olivia")
        TextField("name", text: $name)
        Text(name)
        
        
        Button {
            name = ""
        } label: {
            Text("Clear")
                .foregroundStyle(.blue)
                .font(.system(size: 30, weight: .bold, design: .monospaced))
        }

    }
}
