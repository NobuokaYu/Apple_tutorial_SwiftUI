import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section() {
                    NavigationLink(destination: HelloExample()) {
                        Text("HelloExample")}
                    NavigationLink(destination: LocalizeExample()) {
                        Text("LocalizeExample")}
                    NavigationLink(destination: SimpleViewModifier()) {
                        Text("SimpleViewModifier")}
                    NavigationLink(destination: ViewModifierExample()) {
                        Text("ViewModifierExample")}
                    NavigationLink(destination: ClickViewModifierExample()) {
                        Text("ClickViewModifierExample")}
                    NavigationLink(destination: FillHalfOfVewExample()) {
                        Text("FillHalfOfVewExample")}
                    NavigationLink(destination: GeometryReaderExample()) {
                        Text("GeometryReaderExample")}
                    NavigationLink(destination: GroupExample()) {
                        Text("GroupExample")}
                    NavigationLink(destination: AddTextExample()) {
                        Text("AddTextExample")}
                }

            }.navigationBarTitle("Advanced SwiftUI")
        }
        
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
