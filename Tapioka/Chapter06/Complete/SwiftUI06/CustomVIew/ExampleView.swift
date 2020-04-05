import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(destination: ShapeExample()) {
                        Text("ShapeExample")}
                    NavigationLink(destination: ShapeExample1()) {
                        Text("ShapeExample1")}
                    NavigationLink(destination: PathExample()) {
                        Text("PathExample")}
                    NavigationLink(destination: MyEllipseExample()) {
                        Text("MyEllipseExample")}
                    NavigationLink(destination: CustomPathExample()) {
                        Text("CustomPathExample")}
                    NavigationLink(destination: CurveExample()) {
                        Text("CurveExample")}
                    NavigationLink(destination: AddLineExample()) {
                        Text("AddLineExample")}
                    NavigationLink(destination: AddLinesExample()) {
                        Text("AddLinesExample")}
                    NavigationLink(destination: ArcExample()) {
                        Text("ArcExample")}
                    NavigationLink(destination: AddRectExample()) {
                        Text("AddRectExample")}
                }
                Section {
                    NavigationLink(destination: AddRectsExample()) {
                        Text("AddRectsExample")}
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
