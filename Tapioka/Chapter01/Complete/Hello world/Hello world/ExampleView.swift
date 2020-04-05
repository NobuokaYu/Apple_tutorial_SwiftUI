import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section() {
                    NavigationLink(destination: ContentView1()) {
                        Text("ContentView1")}
                    NavigationLink(destination: ContentView2()) {
                        Text("ContentView2")}
                    NavigationLink(destination: ContentView3()) {
                        Text("ContentView3")}
                    NavigationLink(destination: ContentView4()) {
                        Text("ContentView4")}
                    NavigationLink(destination: ContentView5()) {
                        Text("ContentView5")}
                    NavigationLink(destination: ContentView6()) {
                        Text("ContentView6")}
                    NavigationLink(destination: ContentView7()) {
                        Text("ContentView7")}
                    NavigationLink(destination: ContentView8()) {
                        Text("ContentView8")}
                    NavigationLink(destination: ContentView9()) {
                        Text("ContentView9")}
                }
                Section() {
                    NavigationLink(destination: ViewBuilderExample()) {
                        Text("ViewBuilderExample")}
                }

            }.navigationBarTitle("Hello, World!")
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
