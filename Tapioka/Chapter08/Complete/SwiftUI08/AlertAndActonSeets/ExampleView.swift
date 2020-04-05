import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(destination: AlertExample()) {
                        Text("AlertExample")}
                    NavigationLink(destination: AlertButtonExample()) {
                        Text("AlertButtonExample")}
                    NavigationLink(destination: AlerItemExample()) {
                        Text("AlerItemExample")}
                    NavigationLink(destination: AlertOnClickExample()) {
                        Text("AlertOnClickExample")}
                    NavigationLink(destination: ActonSheetExample()) {
                        Text("ActonSheetExample")}
                    NavigationLink(destination: ActionSheetOnClickExample()) {
                        Text("ActionSheetOnClickExample")}

                }
            }.navigationBarTitle("CustomView")
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
