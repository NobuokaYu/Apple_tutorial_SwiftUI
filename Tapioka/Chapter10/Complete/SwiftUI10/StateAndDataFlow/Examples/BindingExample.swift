import SwiftUI

fileprivate
struct ContentView: View {
    
    @State
    private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("ContentView : \(count)")
                .padding()
                .border(Color.red)

            SubView1(count: $count)
                .padding()
                .border(Color.green)
            
            SubView2(count: $count)
                .padding()
                .border(Color.blue)
        }
    }
}

fileprivate
struct SubView1: View {
    
    @Binding
    var count: Int
    
    var body: some View {
        
        Button(action: {
            self.count = self.count + 10
        }) {
            Text("SubView1 +10 : \(count)")
        }
    }
}

fileprivate
struct SubView2: View {
    
    @Binding
    var count: Int

    var body: some View {
        VStack {
            Text("SubView2 : \(count)")
            Stepper(value: $count, in: 0...100) {
                Text("Stepper : \(count)")
            }.border(Color.pink)
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

struct BindingExample: View {
    var body: some View {
        ContentView()
    }
}

struct BindingExample_Previews: PreviewProvider {
    static var previews: some View {
        BindingExample()
    }
}

