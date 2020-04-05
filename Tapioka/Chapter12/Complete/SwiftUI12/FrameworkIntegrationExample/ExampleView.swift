import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section() {
                    NavigationLink(destination: IndicatorExample()) {
                        Text("IndicatorExample")}
                    NavigationLink(destination: LoadingExample()) {
                        Text("LoadingExample")}
                    NavigationLink(destination: PageControlExample()) {
                        Text("PageControlExample")}

                }

            }.navigationBarTitle("Framework Integration")
        }
        
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
