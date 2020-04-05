import SwiftUI

private
struct ContentView: View {
    @State var labelText = "Hello SwiftUI"
    var body: some View {
        VStack(spacing: 80) {
            Text(labelText)
                .font(.largeTitle)
                .foregroundColor(.blue)
            Button(action: {self.labelText = "Yes Tapped!"}) {
                Text("Tap!!")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                    .frame(width: 70, height: 20)
                    .border(Color.gray)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
