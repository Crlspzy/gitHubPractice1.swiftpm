import SwiftUI

struct ContentView: View {
    @State var name = ""
    var body: some View {
     Text("Evan")
        Text("Olivia")
        TextField("name", text: $name)
        Text(name)
    }
}
