import SwiftUI

struct StrawShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.addLines([
                CGPoint(x: scale * 0.6745, y: scale * 0.0069),
                CGPoint(x: scale * 0.5217, y: scale * 0.8735),
                CGPoint(x: scale * 0.6103, y: scale * 0.8892),
                CGPoint(x: scale * 0.7631, y: scale * 0.0225)
            ])
            path.closeSubpath()
        }
    }
}

struct StrawShape_Previews : PreviewProvider {
    static var previews: some View {
        StrawShape()
    }
}
struct IceCreamShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.addArc(center: CGPoint(x:scale * 0.50,
                                        y:scale * 0.30),
                        radius: scale * 0.26,
                        startAngle: .degrees(0) ,
                        endAngle: .degrees(180),
                        clockwise: true)
        }
    }
}
struct IceCreamShape_Previews : PreviewProvider {
    static var previews: some View {
        IceCreamShape()
    }
}

struct TeaShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.addLines([
                CGPoint(x: scale * 0.2115, y:scale * 0.30),
                CGPoint(x: scale * 0.30,   y:scale * 1.00),
                CGPoint(x: scale * 0.70,   y:scale * 1.00),
                CGPoint(x: scale * 0.7875, y:scale * 0.30),
            ])
            path.closeSubpath()
        }
    }
}
struct TeaShape_Previews : PreviewProvider {
    static var previews: some View {
        TeaShape()
    }
}

struct GlassShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.move(to: CGPoint(x:scale * 0.20, y:scale * 0.20))
            path.addLine(to: .init(x:scale * 0.30, y:scale * 1.00))
            path.addLine(to: .init(x:scale * 0.70, y:scale * 1.00))
            path.addLine(to: .init(x:scale * 0.80, y:scale * 0.20))
            path.closeSubpath()
        }
            .strokedPath(.init(lineWidth: min(rect.size.width,
                                              rect.size.height) * 0.03))
    }
}
struct GlassShape_Previews : PreviewProvider {
    static var previews: some View {
        GlassShape()
    }
}

struct Tapioca: Identifiable {
    static let radius: CGFloat = 0.04
    var id = UUID()
    let pt: CGPoint
}
struct Coco: Identifiable {
    static let size: CGFloat = 0.10
    var id = UUID()
    let pt: CGPoint
}

struct TapiocaShape: Shape {
    let tapioca: Tapioca
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.addArc(center: CGPoint(x: scale * tapioca.pt.x,
                                        y: scale * tapioca.pt.y),
                        radius: scale * Tapioca.radius,
                        startAngle: .degrees(0),
                        endAngle: .degrees(360),
                        clockwise: true)
        }
    }
}
struct NataDeCocoShape: Shape {
    let coco: Coco
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.addRoundedRect(
                in:CGRect(x: scale * coco.pt.x,
                          y: scale * coco.pt.y,
                          width: scale * Coco.size,
                          height: scale * Coco.size),
                cornerSize: CGSize(width: 3, height: 3))
        }
    }
}

struct TapiocaShape_Previews : PreviewProvider {
    static var previews: some View {
        TapiocaShape(tapioca: .init(pt: .init(x: 0.5, y: 0.5)))
    }
}

struct NataDeCocoShape_Previews : PreviewProvider {
    static var previews: some View {
        NataDeCocoShape(coco: .init(pt: .init(x: 0.5, y: 0.5)))
    }
}

fileprivate let tapiocaArray = [
    Tapioca(pt: CGPoint(x: 0.58, y: 0.71)),
    Tapioca(pt: CGPoint(x: 0.65, y: 0.78)),
    Tapioca(pt: CGPoint(x: 0.64, y: 0.86)),
    Tapioca(pt: CGPoint(x: 0.59, y: 0.93)),
    Tapioca(pt: CGPoint(x: 0.56, y: 0.83)),
    Tapioca(pt: CGPoint(x: 0.50, y: 0.92)),
    Tapioca(pt: CGPoint(x: 0.46, y: 0.77)),
    Tapioca(pt: CGPoint(x: 0.44, y: 0.86)),
    Tapioca(pt: CGPoint(x: 0.37, y: 0.73)),
    Tapioca(pt: CGPoint(x: 0.36, y: 0.83)),
    Tapioca(pt: CGPoint(x: 0.36, y: 0.92)),
]

fileprivate let nataDeCocoArray = [
    Coco(pt: CGPoint(x: 0.3003, y: 0.5405)),
    Coco(pt: CGPoint(x: 0.3862, y: 0.5962)),
    Coco(pt: CGPoint(x: 0.4942, y: 0.5742)),
    Coco(pt: CGPoint(x: 0.5837, y: 0.5637)),
]

struct TapiocaTeaView: View {
    var iceCream: Int
    var flavor: Int
    var nataDeCoco: Bool
    
    static func makeTeaGradient(_ flavor: Flavor) -> [Color] {
        var start: Color = Color.green
        var end: Color = Color.yellow
        switch flavor {
            case .milk_tea:
                start = Color("milk_tea_start")
                end = Color("milk_tea_end")
            case .okinawa_brown_sugar_milk:
                start = Color("okinawa_brown_sugar_milk_start")
                end = Color("okinawa_brown_sugar_milk_end")
            case .uji_matcha_milk:
                start = Color("uji_matcha_milk_start")
                end = Color("uji_matcha_milk_end")
            case .cassis_raspberry_milk:
                start = Color("cassis_raspberry_milk_start")
                end = Color("cassis_raspberry_milk_end")
            case .strawberry_milk:
                start = Color("strawberry_milk_start")
                end = Color("strawberry_milk_end")
        }
        return [start, end]
    }
    
    static func makeIceGradient(_ ice: IceCream) -> [Color] {
        var start: Color = Color.white
        var end: Color = Color.gray
        switch ice {
            case .None:
                break;
            case .Tea:
                start = Color("ice_tea_start")
                end = Color("ice_tea_end")
            case .Vanilla:
                start = Color("ice_vanilla_start")
                end = Color("ice_vanilla_end")
            case .Matcha:
                start = Color("ice_matcha_start")
                end = Color("ice_matcha_end")
        }
        return [start,end]
    }
    
    var body: some View {
        let fl: Flavor = Flavor(rawValue: Int16(flavor))!
        let fColors = TapiocaTeaView.makeTeaGradient(fl)
        let teaGradient = LinearGradient(
            gradient: .init(colors: fColors),
            startPoint: .top,
            endPoint: .bottom
        )
        
        let ic: IceCream = IceCream(rawValue: Int16(iceCream))!
        let iColors = TapiocaTeaView.makeIceGradient(ic)
        let iceGradient = LinearGradient(
            gradient: .init(colors: iColors),
            startPoint: .leading,
            endPoint: .trailing
        )

        return ZStack{
            /// ストロー
            StrawShape().foregroundColor(.yellow)
            
            /// アイスクリーム
            if self.iceCream != 0 {
                IceCreamShape().fill(iceGradient)
            }

            /// ティー
            TeaShape().fill(teaGradient)

            /// タピオカ
            ForEach(tapiocaArray) {tapioca in
                TapiocaShape(tapioca: tapioca).fill(Color("tapioca"))
            }

            /// ナタデココ
            if self.nataDeCoco {
                ForEach(nataDeCocoArray) {coco in
                    NataDeCocoShape(coco: coco)
                        .fill(Color("nata_de_coco"))
                }
            }

            /// グラス
            GlassShape().foregroundColor(Color("glass"))
        }
    }
}

struct TapiocaTeaView_Previews: PreviewProvider {
    static var previews: some View {
        TapiocaTeaView(iceCream: Int(IceCream.Tea.rawValue),
                       flavor: Int(Flavor.milk_tea.rawValue),
                       nataDeCoco: true
        )
    }
}
