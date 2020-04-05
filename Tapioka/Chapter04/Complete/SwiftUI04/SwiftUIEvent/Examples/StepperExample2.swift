import SwiftUI

fileprivate
struct ContentView: View {
    @State var age = 20

    var body: some View {
        VStack {
            Stepper(
                onIncrement: {
                    self.age += 10
                },
                onDecrement: {
                    self.age -= 10
                })
            {
                Text("年代を入力してください")
            }
            Text("あなたは\(age)歳代")
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

struct StepperExample2: View {
    var body: some View {
        ContentView()
    }
}

struct StepperExample2_Previews: PreviewProvider {
    static var previews: some View {
        StepperExample2()
    }
}

