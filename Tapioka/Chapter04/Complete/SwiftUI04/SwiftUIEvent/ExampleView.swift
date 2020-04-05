import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section() {
                    NavigationLink(destination: TapButtonExampleNotWork()) {
                        Text("TapButtonExampleNotWork")}
                    NavigationLink(destination: TapButtonExample()) {
                        Text("TapButtonExample")}
                    NavigationLink(destination: ImageButtonExample()) {
                        Text("ImageButtonExample")}
                    NavigationLink(destination: WhatIsBinding()) {
                        Text("WhatIsBinding")}
                    NavigationLink(destination: ToggleExample()) {
                        Text("ToggleExample")}
                    NavigationLink(destination: TextFieldExample()) {
                        Text("TextFieldExample")}
                    NavigationLink(destination: RoundedBorderTextFieldExample()) {
                        Text("RoundedBorderTextFieldExample")}
                    NavigationLink(destination: OverlayTextFieldExample()) {
                        Text("OverlayTextFieldExample")}
                    NavigationLink(destination: SecureFieldExample()) {
                        Text("SecureFieldExample")}
                    NavigationLink(destination: SliderExample()) {
                        Text("SliderExample")}
                }
                Section() {
                    NavigationLink(destination: SliderLabelExample()) {
                        Text("SliderLabelExample")}
                    NavigationLink(destination: PickerExample()) {
                        Text("PickerExample")}
                    NavigationLink(destination: PickerImageExample()) {
                        Text("PickerImageExample")}
                    NavigationLink(destination: SusiPickerExample()) {
                        Text("SusiPickerExample")}
                    NavigationLink(destination: ForEachExample()) {
                        Text("ForEachExample")}
                    NavigationLink(destination: SegmentedPickerExample()) {
                        Text("SegmentedPickerExample")}
                    NavigationLink(destination: SegmentedControlExample()) {
                        Text("SegmentedControlExample")}
                    NavigationLink(destination: DatePickerExample()) {
                        Text("DatePickerExample")}
                    NavigationLink(destination: DateTimePickerExample()) {
                        Text("DateTimePickerExample")}
                    NavigationLink(destination: TimePickerExample()) {
                        Text("TimePickerExample")}
                }
                Section() {
                    NavigationLink(destination: DatePickerExample2()) {
                        Text("DatePickerExample2")}
                    NavigationLink(destination: StepperExample()) {
                        Text("StepperExample")}
                    NavigationLink(destination: StepperExample2()) {
                        Text("StepperExample2")}

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
