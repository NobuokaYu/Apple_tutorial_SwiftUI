import SwiftUI

fileprivate
struct ContentView: View {
    
    struct BlendName:Identifiable {
        let id: String
        let mode:BlendMode
    }
    
    let blendMode = [
        BlendName(id: "normal", mode: BlendMode.normal),
        BlendName(id: "multiply", mode: BlendMode.multiply),
        BlendName(id: "screen", mode: BlendMode.screen),
        BlendName(id: "overlay", mode: BlendMode.overlay),
        BlendName(id: "darken", mode: BlendMode.darken),
        BlendName(id: "lighten", mode: BlendMode.lighten),
        BlendName(id: "colorDodge", mode: BlendMode.colorDodge),
        BlendName(id: "colorBurn", mode: BlendMode.colorBurn),
        BlendName(id: "softLight", mode: BlendMode.softLight),
        BlendName(id: "hardLight", mode: BlendMode.hardLight),
        BlendName(id: "difference", mode: BlendMode.difference),
        BlendName(id: "exclusion", mode: BlendMode.exclusion),
        BlendName(id: "hue", mode: BlendMode.hue),
        BlendName(id: "saturation", mode: BlendMode.saturation),
        BlendName(id: "color", mode: BlendMode.color),
        BlendName(id: "luminosity", mode: BlendMode.luminosity),
        BlendName(id: "sourceAtop", mode: BlendMode.sourceAtop),
        BlendName(id: "destinationOver", mode: BlendMode.destinationOver),
        BlendName(id: "destinationOut", mode: BlendMode.destinationOut),
        BlendName(id: "plusDarker", mode: BlendMode.plusDarker),
        BlendName(id: "plusLighter", mode: BlendMode.plusLighter),
    ]

    var body: some View {

        return ScrollView{
            ForEach(blendMode) { blend in
                ZStack {
                    Image("big-image").frame(height: 100).clipped()
                    Image("swift-logo")
                        .blendMode(blend.mode)
                    VStack{
                        Text(blend.id).foregroundColor(.white)
                        Spacer()
                    }
                }
            }
        }
    }
}


/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/


// MARK: サンプル実行用コード

struct EffectBlendExample: View {
    var body: some View {
        ContentView()
    }
}

struct EffectBlendExample_Previews: PreviewProvider {
    static var previews: some View {
        EffectBlendExample()
            .previewLayout(.fixed(width: 330, height: 2300))
        
    }
}
