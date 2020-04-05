import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section() {
                    NavigationLink(destination: TapExample()) {
                        Text("TapExample")}
                    NavigationLink(destination: TapCountExample()) {
                        Text("TapCountExample")}
                    NavigationLink(destination: LongPressExample()) {
                        Text("LongPressExample")}
                    NavigationLink(destination: GestureTapExample()) {
                        Text("GestureTapExample")}
                    NavigationLink(destination: GestureLongPress()) {
                        Text("GestureLongPress")}
                    NavigationLink(destination: DragExample()) {
                        Text("DragExample")}
                    NavigationLink(destination: DragPositionExample()) {
                        Text("DragPositionExample")}
                    NavigationLink(destination: OnAppearExample()) {
                        Text("OnAppearExample")}
                }
                Section() {
                    NavigationLink(destination: KeyboardExample()) {
                        Text("KeyboardExample")}
                }
            }.navigationBarTitle("Events and Gestures")
        }
        
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
