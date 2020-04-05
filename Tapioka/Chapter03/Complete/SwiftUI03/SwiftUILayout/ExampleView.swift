import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section() {
                    NavigationLink(destination: VStackExample()) {
                        Text("VStackExample")}
                    NavigationLink(destination: HStackExample()) {
                        Text("HStackExample")}
                    NavigationLink(destination: StackAlignmentExample()) {
                        Text("StackAlignmentExample")}
                    NavigationLink(destination: StackAlignmentExample2()) {
                        Text("StackAlignmentExample2")}
                    NavigationLink(destination: SpacerExample()) {
                        Text("SpacerExample")}
                    NavigationLink(destination: DividerExample()) {
                        Text("DividerExample")}
                    NavigationLink(destination: ZStackViewExample()) {
                        Text("ZStackViewExample")}
                    NavigationLink(destination: IfStatementExample()) {
                        Text("IfStatementExample")}
                    NavigationLink(destination: IfStatementExample2()) {
                        Text("IfStatementExample2")}
                    NavigationLink(destination: AlignmentExample()) {
                        Text("AlignmentExample")}

                }
                Section() {
                    NavigationLink(destination: SubscriptExample()) {
                        Text("SubscriptExample")}
                    NavigationLink(destination: AlignmentGuideHorizontalExample()) {
                        Text("AlignmentGuideHorizontalExample")}
                   

                }
            }
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
