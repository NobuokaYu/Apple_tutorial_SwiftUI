import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section() {
                    NavigationLink(destination: StateBadExample()) {
                        Text("StateBadExample")}
                    NavigationLink(destination: StateExample()) {
                        Text("StateExample")}
                    NavigationLink(destination: BindingExample()) {
                        Text("BindingExample")}
                    NavigationLink(destination: CountExample()) {
                        Text("CountExample")}
                    NavigationLink(destination: BindingProjectionExample()) {
                        Text("BindingProjectionExample")}
                    NavigationLink(destination: CountBindingExample()) {
                        Text("CountBindingExample")}
                    NavigationLink(destination: ObservedObjectExample()) {
                        Text("ObservedObjectExample")}
                    NavigationLink(destination: ObservedObjectBindingExample()) {
                        Text("ObservedObjectBindingExample")}
                    NavigationLink(destination: ObservedObjectManuallyExample()) {
                        Text("ObservedObjectManuallyExample")}
                    NavigationLink(destination: PropertyWrapperExample()) {
                        Text("PropertyWrapperExample")}
                }
                
                Section() {
                    NavigationLink(destination: EnvironmentAccessibilityEnabledExample()) {
                        Text("accessibilityEnabled")}
                    NavigationLink(destination: EnvironmentAllowsTighteningExample()) {
                        Text("allowsTightening")}
                    NavigationLink(destination: EnvironmentCalendarAndLocaleExample()) {
                        Text("CalendarAndLocale")}
                    NavigationLink(destination: EnvironmentColorSchemeExample()) {
                        Text("colorScheme")}
                    NavigationLink(destination: EnvironmentColorSchemeContrastExample()) {
                        Text("colorSchemeContrast")}
                    NavigationLink(destination: EnvironmentDefaultMinListHeaderHeightExample()) {
                        Text("defaultMinListHeaderHeight")}
                    NavigationLink(destination: EnvironmentDefaultMinListRowHeightExample()) {
                        Text("defaultMinListRowHeight")}
                    NavigationLink(destination: EnvironmentDisableAutocorrectionExample()
                    .environment(\.disableAutocorrection, true)
                    ) {
                        Text("disableAutocorrection")}
                    NavigationLink(destination: EnvironmentDisplayScaleExample()) {
                        Text("displayScale")}
                }
                Section() {
                    NavigationLink(destination: EnvironmentEditModeExample()) {
                        Text("editMode")}
                    NavigationLink(destination: EnvironmentFontExample()) {
                        Text("font")}
                    NavigationLink(destination: FontFamilyNamesExample()) {
                        Text("FontFamilyNames")}
                    NavigationLink(destination: EnvironmentSizeClassExample()) {
                        Text("horizontalSizeClass/verticalSizeClass")}
                    NavigationLink(destination: EnvironmentImageScaleExample()) {
                        Text("imageScale")}
                    NavigationLink(destination: EnvironmentIsEnabledExample()) {
                        Text("isEnabled")}
                    NavigationLink(destination: EnvironmentLayoutDirectionExample()) {
                        Text("layoutDirection")}
                    NavigationLink(destination: EnvironmentLegibilityWeightExample()) {
                        Text("legibilityWeight")}
                    NavigationLink(destination: EnvironmentLineLimitExample()) {
                        Text("lineLimit")}
                }
                Section() {
                    NavigationLink(destination: EnvironmentLinespacingExample()) {
                        Text("lineSpacing")}
                    NavigationLink(destination: EnvironmentMinimumScaleFactorExample()) {
                        Text("minimumScaleFactor")}
                    NavigationLink(destination: EnvironmentPixelLengthExample()) {
                        Text("pixelLength")}
                    NavigationLink(destination: EnvironmentPresentationModeExample()) {
                        Text("presentationMode")}
                    NavigationLink(destination: EnvironmentSizeCategoryExample()) {
                        Text("sizeCategory")}
                    NavigationLink(destination: EnvironmentTimeZoneExample()) {
                        Text("timeZone")}
                    NavigationLink(destination: EnvironmentUndoManagerExample()) {
                        Text("undoManager")}
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
