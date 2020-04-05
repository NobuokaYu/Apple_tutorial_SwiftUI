import SwiftUI

fileprivate
struct ContentView: View {
    @State var countAchange = 0
    @State var countBchange = 0
    @State var countAall = 0
    @State var countBall = 0
    @State var countAsubviews = 0
    @State var countBsubviews = 0
    @State var countAgesture = 0
    @State var countBgesture = 0
    @State var countAnone = 0
    @State var countBnone = 0
    @State var mask = GestureMask.all
    @State var change = "all"
    var body: some View {
        VStack {
            Button(action: {
                self.mask = GestureMask.all
                self.change = "all"
            }) {
                Text("GestureMask.all")
            }
            Button(action: {
                self.mask = GestureMask.subviews
                self.change = "subviews"
            }) {
                Text("GestureMask.subviews")
            }
            Button(action: {
                self.mask = GestureMask.gesture
                self.change = "gesture"
            }) {
                Text("GestureMask.gesture")
            }
            Button(action: {
                self.mask = GestureMask.none
                self.change = "none"
            }) {
                Text("GestureMask.none")
            }
            
            VStack {
                 Text(change)

                 Text("countA \(countAchange)")
                 .padding()
                     .background(Color.yellow)
                     .gesture(
                         TapGesture()
                             .onEnded{ _ in
                                 self.countAchange += 1
                             }

                 )
                 Text("countB \(countBchange)")
                 .padding()
                     .background(Color.green)


             }.gesture(
                 TapGesture()
                     .onEnded{ _ in
                         self.countBchange += 1
                     }
                 ,including:mask
             )
            
            
            HStack {
                VStack {
                    Text("all")

                    Text("countA \(countAall)")
                    .padding()
                        .background(Color.yellow)
                        .gesture(
                            TapGesture()
                                .onEnded{ _ in
                                    self.countAall += 1
                                }

                    )
                    Text("countB \(countBall)")
                    .padding()
                        .background(Color.green)


                }.gesture(
                    TapGesture()
                        .onEnded{ _ in
                            self.countBall += 1
                        }
                    ,including:GestureMask.all
                )
                VStack {
                     Text("subviews")

                     Text("countA \(countAsubviews)")
                     .padding()
                         .background(Color.yellow)
                         .gesture(
                             TapGesture()
                                 .onEnded{ _ in
                                     self.countAsubviews += 1
                                 }

                     )
                     Text("countB \(countBsubviews)")
                     .padding()
                         .background(Color.green)


                 }.gesture(
                     TapGesture()
                         .onEnded{ _ in
                             self.countBsubviews += 1
                         }
                     ,including:GestureMask.subviews
                 )
            }
            HStack {
                VStack {
                    Text("gesture")

                    Text("countA \(countAgesture)")
                    .padding()
                        .background(Color.yellow)
                        .gesture(
                            TapGesture()
                                .onEnded{ _ in
                                    self.countAgesture += 1
                                }

                    )
                    Text("countB \(countBgesture)")
                    .padding()
                        .background(Color.green)


                }.gesture(
                    TapGesture()
                        .onEnded{ _ in
                            self.countBgesture += 1
                        }
                    ,including:GestureMask.gesture
                )
                VStack {
                     Text("none")

                     Text("countA \(countAnone)")
                     .padding()
                         .background(Color.yellow)
                         .gesture(
                             TapGesture()
                                 .onEnded{ _ in
                                     self.countAnone += 1
                                 }

                     )
                     Text("countB \(countBnone)")
                     .padding()
                         .background(Color.green)


                 }.gesture(
                     TapGesture()
                         .onEnded{ _ in
                             self.countBnone += 1
                         }
                     ,including:GestureMask.none
                 )
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

struct GestureTapMaskExample: View {
    var body: some View {
        ContentView()
    }
}

struct GestureTapMaskExample_Previews: PreviewProvider {
    static var previews: some View {
        GestureTapMaskExample()
    }
}

