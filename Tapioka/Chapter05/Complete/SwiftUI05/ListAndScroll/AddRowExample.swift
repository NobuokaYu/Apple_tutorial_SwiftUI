import SwiftUI

fileprivate
struct ContentView: View {
    @State var mfgs:[String] = []
    @State var new = ""

    var body: some View {
        VStack {
            VStack(alignment:.leading) {
                Text("Add new manufacturing")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                HStack {
                    TextField("Input new mfg",
                              text: $new)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        self.mfgs.append(self.new)
                        self.new = ""
                    }) {
                        Text("Add")
                            .buttonStyle(BorderlessButtonStyle())
                    }
                }
            }.padding([.leading,.trailing])
            List {
                ForEach(mfgs, id: \.self) { user in
                    Text(user)
                }
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

struct AddRowExample: View {
    var body: some View {
        ContentView()
    }
}

struct AddRowExample_Previews: PreviewProvider {
    static var previews: some View {
        AddRowExample()
    }
}

