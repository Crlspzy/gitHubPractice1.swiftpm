import SwiftUI

struct ContentView: View {
    @State var name = ""
    var body: some View {
     Text("Evan")
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
        }

    }
}
