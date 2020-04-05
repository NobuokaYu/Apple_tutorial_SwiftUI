import SwiftUI

fileprivate
struct ContentView: View {
    
    @State var barFeatureValue = 0;
    
    var body: some View {
        VStack(spacing: 30) {
            Stepper(value: $barFeatureValue) {
                Text("barFeatureValue \(barFeatureValue)")
            }.fixedSize()

            Button(action: {
                GlobalSettings.barFeatureValue = self.barFeatureValue
            }) {
                Text("Save!")
            }
            Button(action: {
                self.barFeatureValue = GlobalSettings.barFeatureValue
            }) {
                Text("Load!")
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

struct UserDefaultExample: View {
    var body: some View {
        ContentView()
    }
}

struct UserDefaultExample_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultExample()
    }
}

