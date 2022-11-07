import SwiftUI
import Firebase

@main
struct ChessApp: App {
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var timeRemaining: Int = 1
    @State var isLoading: Bool = true
    @StateObject var userModel: UserModel = UserModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            if self.isLoading {
                SplashScreenView().onReceive(timer) {_ in
                    if ( timeRemaining > 0 )
                    {
                        timeRemaining -= 1
                    }
                    if (timeRemaining <= 0)
                    {
                        timer.upstream.connect().cancel()
                        isLoading = false
                    }
                }
            }
            else {
                if userModel.loggedIn || userModel.rememberMe {
                    MainMenuView().environmentObject(userModel)
                } else {
                    OnBoardingView().environmentObject(userModel)
                }
            }
        }
    }
}
