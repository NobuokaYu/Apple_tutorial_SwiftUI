import SwiftUI

struct ExampleView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(destination: EffectExamples()) {
                        Text("EffectExamples")}
                    NavigationLink(destination: Effect3DExample()) {
                        Text("Effect3DExample")}
                    NavigationLink(destination: OpacityEffectExample()) {
                        Text("OpacityEffectExample")}
                    NavigationLink(destination: EffectBlurExample()) {
                        Text("EffectBlurExample")}
                    NavigationLink(destination: EffectBlendMultiplyExample()) {
                        Text("EffectBlendMultiplyExample")}
                    NavigationLink(destination: EffectBlendExample()) {
                        Text("EffectBlendExample")}
                    NavigationLink(destination: EffectColorInvert()) {
                        Text("EffectColorInvert")}
                    NavigationLink(destination: EffectColorMultiplyExample()) {
                        Text("EffectColorMultiplyExample")}
                    NavigationLink(destination: EffectContrastEtcExample()) {
                        Text("EffectContrastEtcExample")}
                    NavigationLink(destination: EffectBrightnessExample()) {
                        Text("EffectBrightnessExample")}
                }
                Section{
                    NavigationLink(destination: EffectHueRotationExample()) {
                        Text("EffectHueRotationExample")}
                    NavigationLink(destination: EffectShadowExample()) {
                        Text("EffectShadowExample")}
                   NavigationLink(destination: EffectCompositingGroupExampleBefore()) {
                       Text("EffectCompositingGroupExampleBefore")}
                   NavigationLink(destination: EffectCompositingGroupExample()) {
                       Text("EffectCompositingGroupExample")}
                   NavigationLink(destination: BasicAnimationExample()) {
                       Text("BasicAnimationExample")}
                   NavigationLink(destination: SpringAnimationExample()) {
                       Text("SpringAnimationExample")}
                   NavigationLink(destination: StateAnimationExample()) {
                       Text("StateAnimationExample")}
                    NavigationLink(destination: NoBindingAnimationExample()) {
                        Text("NoBindingAnimationExample")}
                    NavigationLink(destination: BindingAnimationExample()) {
                        Text("BindingAnimationExample")}

                }
                Section{

                    NavigationLink(destination: TransitionAnimationExample()) {
                        Text("TransitionAnimationExample")}
                    NavigationLink(destination: TransitionAnimationExampleSlide()) {
                        Text("TransitionAnimationExampleSlide")}
                    NavigationLink(destination: TransitionAnimationExampleOpacity()) {
                        Text("TransitionAnimationExampleOpacity")}
                    NavigationLink(destination: TransitionAnimationExampleScale()) {
                        Text("TransitionAnimationExampleScale")}
                    NavigationLink(destination: TransitionAnimationExampleMove()) {
                        Text("TransitionAnimationExampleMove")}
                }
                Section {
                    NavigationLink(destination: CombinedAnimationExample()) {
                        Text("CombinedAnimationExample")}
                    NavigationLink(destination: AsymmetricAnimationExample()) {
                        Text("AsymmetricAnimationExample")}
                    NavigationLink(destination: OnAppearAnimationExample()) {
                        Text("OnAppearAnimationExample")}
                }
            }.navigationBarTitle("")
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
