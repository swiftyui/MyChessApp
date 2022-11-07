import SwiftUI

struct MainMenuView: View {
    @EnvironmentObject var userModel: UserModel
    @State private var gridLayout: [GridItem] = [ GridItem(.adaptive(minimum: 100)), GridItem(.flexible()) ]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                HStack {
                    LottieView(lottieFile: "user", loopMode: .loop)
                        .frame(width: 90, height: 90)
                        .cornerRadius(50)
                    Spacer()
                }
                .background(Color(hue: 0.922, saturation: 0.753, brightness: 0.385))
                
                List {
                    HStack(spacing: 0) {
                        LottieView(lottieFile: "new", loopMode: .loop)
                            .frame(width: 100, height: 100)
                        Text("Start a new game")
                        Spacer()
                    }
                    NavigationLink(destination: GameView()) {
                        HStack(spacing: 0) {
                            LottieView(lottieFile: "robot", loopMode: .loop)
                                .frame(width: 100, height: 100)
                            Text("Challenge the AI").padding()
                            Spacer()
                        }
                    }

                    
                }.edgesIgnoringSafeArea(.all)
                
                Text("New Game").font(Font.custom("Futura-CondensedExtraBold", size: 18))
                    .bold()
                    .frame(width: 300, height: 15)
                    .padding()
                    .background(Color(hue: 0.37, saturation: 0.943, brightness: 0.566))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .padding()
            }
        }
    }
}





