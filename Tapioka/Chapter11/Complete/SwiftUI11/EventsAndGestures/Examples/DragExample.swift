import SwiftUI

fileprivate
struct ContentView: View {
    @State var location = ""
    @State var predictedEndLocation = ""
    @State var predictedEndTranslation = ""
    @State var startLocation = ""
    @State var translation = ""
    var body: some View {
        ZStack {
            Image("big-image")
                .gesture(
                    DragGesture().onChanged { value in
                        self.location = "\(value.location)"
                        self.predictedEndLocation
                            = "\(value.predictedEndLocation)"
                        self.predictedEndTranslation
                            = "\(value.predictedEndTranslation)"
                        self.startLocation = "\(value.startLocation)"
                        self.translation = "\(value.translation)"
                    }.onEnded { value in
                        self.location = "\(value.location)"
                        self.predictedEndLocation
                            = "\(value.predictedEndLocation)"
                        self.predictedEndTranslation
                            = "\(value.predictedEndTranslation)"
                        self.startLocation = "\(value.startLocation)"
                        self.translation = "\(value.translation)"
                        
                    }
                    
            )
            
            VStack(alignment:.leading) {
                Text("location: \(location)")
                Text("predictedEndLocation: \(predictedEndLocation)")
                Text("predictedEndTranslation: \(predictedEndTranslation)")
                Text("startLocation: \(startLocation)")
                Text("translation: \(translation)")
                Spacer()
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

struct DragExample: View {
    var body: some View {
        ContentView()
    }
}

struct DragExample_Previews: PreviewProvider {
    static var previews: some View {
        DragExample()
    }
}

