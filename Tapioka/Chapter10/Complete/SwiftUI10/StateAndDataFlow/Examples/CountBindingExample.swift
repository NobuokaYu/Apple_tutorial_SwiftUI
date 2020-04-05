import SwiftUI

fileprivate
struct ContentView: View {
    @State private var count: Int = 0
    
    var body: some View {

        VStack {
            Text("ContentView: \(count)")
            Button(action: {
                self.count = self.count + 10
            }) {
                Text("count + 10")
            }
            MyStepper(value: $count)
        }
    }
}
fileprivate
struct MyStepper:  View {
    @Binding var value: Int

    var body: some View {
        VStack {
            HStack {
                Text("MyStepper: \(value)")
                Button(action: {
                    self.value = self.value - 1
                }) {
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(5)
                }
                Button(action: {
                    self.value = self.value + 1
                }) {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(5)
                }

            }.padding()
            
            Stepper(value: $value, in: 0...200) {
                Text("Stepper: \(value)")
            }
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/


// MARK: サンプル実行用コード

struct CountBindingExample: View {
    var body: some View {
        ContentView()
    }
}

struct CountBindingExample_Previews: PreviewProvider {
    static var previews: some View {
        CountBindingExample()
    }
}

