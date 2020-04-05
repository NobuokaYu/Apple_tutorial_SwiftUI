import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section() {
                    NavigationLink(destination: StaticListExample()) {
                        Text("StaticListExample")}
                    NavigationLink(destination: StaticListExample2()) {
                        Text("StaticListExample2")}
                    NavigationLink(destination: StaticListExample3()) {
                        Text("StaticListExample3")}
                    NavigationLink(destination: DynamicListExample()) {
                        Text("DynamicListExample")}
                    NavigationLink(destination: DynamicListExample2()) {
                        Text("DynamicListExample2")}
                    NavigationLink(destination: DeleteRowExample()) {
                        Text("DeleteRowExample")}
                    NavigationLink(destination: DeleteRowExample2()) {
                        Text("DeleteRowExample2")}
                    NavigationLink(destination: MoveRowExample()) {
                        Text("MoveRowExample")}
                    NavigationLink(destination: SectionExample()) {
                        Text("SectionExample")}

                }
                Section() {
                    NavigationLink(destination: GroupedSectionExample()) {
                        Text("GroupedSectionExample")}
                    NavigationLink(destination: AddRowExample()) {
                        Text("AddRowExample")}
                    NavigationLink(destination: AllScrollViewExample()) {
                        Text("AllScrollViewExample")}
                    NavigationLink(destination: VHScrollViewExample()) {
                        Text("VHScrollViewExample")}
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
