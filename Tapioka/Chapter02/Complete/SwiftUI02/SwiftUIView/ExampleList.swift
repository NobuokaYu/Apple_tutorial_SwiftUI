import SwiftUI

struct ExampleList: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(destination: FrameExample()) {
                        Text("FrameExample")}
                    NavigationLink(destination: FixedExample1()) {
                        Text("FixedExample1")}
                    NavigationLink(destination: FixedExample2()) {
                        Text("FixedExample2")}
                    NavigationLink(destination: BorderExample()) {
                        Text("BorderExample")}
                    NavigationLink(destination: PositionExample()) {
                        Text("PositionExample")}
                    NavigationLink(destination: PositonExample2()) {
                        Text("PositonExample2")}
                    NavigationLink(destination: OffsetExample()) {
                        Text("OffsetExample")}
                    NavigationLink(destination: NoSafeAreaExample()) {
                        Text("NoSafeAreaExample")}
                    NavigationLink(destination: SafeAreaExample()) {
                        Text("SafeAreaExample")}
                }
                Section {
                    NavigationLink(destination: PaddingExample()) {
                        Text("PaddingExample")}
                    NavigationLink(destination: EdgeInsetsExample()) {
                        Text("EdgeInsetsExample")}
                    NavigationLink(destination: BackgroundExample()) {
                        Text("BackgroundExample")}
                    NavigationLink(destination: ForegroundTextExample()) {
                        Text("ForegroundTextExample")}
                    NavigationLink(destination: ForegroundShapeExample()) {
                        Text("ForegroundShapeExample")}
                    NavigationLink(destination: OverlayExample1()) {
                        Text("OverlayExample1")}
                    NavigationLink(destination: OverlayExample2()) {
                        Text("OverlayExample2")}
                    NavigationLink(destination: ClippingExampe1()) {
                        Text("ClippingExampe1")}
                    NavigationLink(destination: ClippingExample2()) {
                        Text("ClippingExample2")}
                }
                Section {
                    NavigationLink(destination: ClipShapeExample()) {
                        Text("ClipShapeExample")}
                    NavigationLink(destination: MaskExample1()) {
                        Text("MaskExample1")}
                    NavigationLink(destination: MaskExample2()) {
                        Text("MaskExample2")}
                    NavigationLink(destination: CornerRadiusExample()) {
                        Text("CornerRadiusExample")}
                    NavigationLink(destination: OrderExample1()) {
                        Text("OrderExample1")}
                    NavigationLink(destination: OrderExample2()) {
                        Text("OrderExample2")}
                    NavigationLink(destination: TextExample1()) {
                        Text("TextExample1")}
                    NavigationLink(destination: LineLimitExample()) {
                        Text("LineLimitExample")}
                    NavigationLink(destination: TruncationMode()) {
                        Text("TruncationMode")}
                }
                Section {
                    NavigationLink(destination: LineSpacingExample()) {
                        Text("LineSpacingExample")}
                    NavigationLink(destination: LargeTitleExample()) {
                        Text("LargeTitleExample")}
                    NavigationLink(destination: TextAppearanceExample()) {
                        Text("TextAppearanceExample")}
                    NavigationLink(destination: ImageViewExample()) {
                        Text("ImageViewExample")}
                    NavigationLink(destination: SystemNameExample1()) {
                        Text("SystemNameExample1")}
                    NavigationLink(destination: SystemNameExample2()) {
                        Text("SystemNameExample2")}
                    NavigationLink(destination: ResizeExample()) {
                        Text("ResizeExample")}
                    NavigationLink(destination: ScaledToFitExample()) {
                        Text("ScaledToFitExample")}
                    NavigationLink(destination: ScaledToFill()) {
                        Text("ScaledToFill")}
                }
                Section {
                    NavigationLink(destination: ImageClippingExample()) {
                        Text("ImageClippingExample")}
                    NavigationLink(destination: ColorExample()) {
                        Text("ColorExample")}
                    NavigationLink(destination: ColorResourcesExample()) {
                        Text("ColorResourcesExample")}
                    NavigationLink(destination: LinearGradientExample()) {
                        Text("LinearGradientExample")}
                    NavigationLink(destination: ColorStopGradientExample()) {
                        Text("ColorStopGradientExample")}
                    NavigationLink(destination: AngularGradientExample()) {
                        Text("AngularGradientExample")}
                    NavigationLink(destination: RadialGradientExample()) {
                        Text("RadialGradientExample")}

                }
            }.navigationBarTitle("Examples")
        }
    }
}

struct ExampleList_Previews: PreviewProvider {
    static var previews: some View {
        ExampleList()
    }
}
