import SwiftUI

fileprivate
struct ContentView: View {
    @State var showingAlert = false
    @State var anserMessage = ""
    var body: some View {
        
        let onButtnClickCat = { ()->Void in
            self.anserMessage = "あなたは猫を選びました・・・"
        }
        
        let onButtnClickDog = { ()->Void in
            self.anserMessage = "あなたは犬を選びました・・・"
        }
        
        return VStack {
            Button(action: {
                self.showingAlert = true
            }) {
                Text("アラートを表示")
            }
            .alert(isPresented: $showingAlert) {
                Alert.init(
                    title: Text("質問"),
                    message: Text("あなたはどちらの動物に近いですか？"),
                    primaryButton: .destructive(Text("ネコ"),
                                                action: onButtnClickCat),
                    secondaryButton: .cancel(Text("イヌ"),
                                             action: onButtnClickDog))
            }
            Text(anserMessage)
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

struct AlertOnClickExample: View {
    var body: some View {
        ContentView()
    }
}

struct AlertOnClickExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertOnClickExample()
    }
}

