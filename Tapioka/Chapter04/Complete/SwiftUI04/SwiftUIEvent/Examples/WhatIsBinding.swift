// プロパティラッパーの理解を助けるため、 @Stateや@Bindingを使わずにSwiftUIを
// つかうと次のようになる。


import SwiftUI

struct WhatIsBinding: View {
    var isOn = State(initialValue: false)
    var body: some View {

        VStack {
            Toggle(isOn: isOn.projectedValue) {
                Text("これは")
                Text("オリジナルの")
                Text("Toggleビュー")
            }
            MyToggle(isOn: isOn.projectedValue) {
                Text("これは")
                Text("自作の")
                Text("Toggleビュー")
            }
        }
    }
}

struct MyToggle<Label>: View where Label: View {
    var isOn:Binding<Bool>
    var label: Label

    public init(isOn: Binding<Bool>, @ViewBuilder label: () -> Label){
        self.isOn = isOn
        self.label = label()
    }

    var body: some View {
        HStack {
            HStack {
                label
            }
            Spacer()
            Button(action: {
                withAnimation {
                    self.isOn.wrappedValue.toggle()
                }
                
            }){
                if isOn.wrappedValue {
                    Text("　●").animation(.default)
                        .foregroundColor(.green)
                        .font(.title)
                } else {
                    Text("●　").animation(.default)
                        .foregroundColor(.gray)
                        .font(.title)
                }
            }
        }
    }
}


struct WhatIsBinding_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsBinding()
    }
}
