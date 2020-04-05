import SwiftUI

fileprivate
struct ContentView: View {
    @State var age = 18

    var body: some View {
        VStack {
            Stepper(value: $age, in: 0...130) {
                Text("年齢を入力してください")
            }
            Text("あなたの年齢:\(age)")
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

struct StepperExample: View {
    var body: some View {
        ContentView()
    }
}

struct StepperExample_Previews: PreviewProvider {
    static var previews: some View {
        StepperExample()
    }
}

