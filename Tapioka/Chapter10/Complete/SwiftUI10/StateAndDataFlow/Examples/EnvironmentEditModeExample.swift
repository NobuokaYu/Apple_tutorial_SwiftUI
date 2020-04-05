import SwiftUI

fileprivate
struct ContentView: View {
    @State var order: String = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("注文内容 : \(order)")
                    .padding(.bottom, 30)
                
                NavigationLink(destination: EditView(text: $order)) {
                    Text("EditViewを開く")
                }
            }.navigationBarTitle(Text("editMode Example"))
        }
    }
}
fileprivate
struct EditView: View {
    @Environment(\.editMode) var envEditMode: Binding<EditMode>?
    @Binding var text: String
    var body: some View {
        VStack {
            if envEditMode?.wrappedValue.isEditing ?? false {
                TextField("入力してください", text: $text)
                    .navigationBarTitle(Text("編集モード"))
            } else {
                Text(text)
                    .navigationBarTitle(Text("閲覧モード"))
            }
        }.navigationBarItems(trailing: EditButton())
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

struct EnvironmentEditModeExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentEditModeExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentEditModeExample()
        .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}

