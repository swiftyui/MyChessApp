import SwiftUI

struct LoginView: View {
    @EnvironmentObject var userModel: UserModel
    @State var text: String = ""
    
    var body: some View {
        
        ZStack {
            
            Color(hue: 0.922, saturation: 0.753, brightness: 0.385).edgesIgnoringSafeArea(.all)
            
            Circle()
                .frame(width: 600, height: 600)
                .foregroundColor(.white)
                .offset(x: 0, y: -280)
            
            VStack {
                Text("Welcome back!")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .padding()

                LottieView(lottieFile: "user", loopMode: .loop)
                    .frame(width: 260, height: 400)
                    
                Spacer()
                
                Text("Login details")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                TextField("", text: self.$text )
                    .placeholder(when: text.isEmpty) {
                        Text("Email address....").foregroundColor(.white)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .frame(width: 335, height: 40)
                    .overlay {
                        Capsule(style: .continuous).stroke(Color.white, style: StrokeStyle(lineWidth: 1))
                    }
                
                PasswordControl("", text: self.$text)
                    .placeholder(when: text.isEmpty) {
                        Text("Password....").foregroundColor(.white)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .frame(width: 335, height: 40)
                    .overlay {
                        Capsule(style: .continuous).stroke(Color.white, style: StrokeStyle(lineWidth: 1))
                    }
                
                HStack {
                    CheckBoxView(checked: $userModel.rememberMe)
                    Text("Remember me").foregroundColor(.white)

                }.padding()
                    
                
                Text("Sign in")
                    .frame(width: 200, height: 15)
                    .padding()
                    .background(Color(hue: 0.522, saturation: 0.0, brightness: 0.177))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .onTapGesture {
                        userModel.loggedIn = true
                    }
                
                NavigationLink(destination: OnBoardingView().environmentObject(userModel)) {
                    HStack {
                        Text("Still need an account?").foregroundColor(.primary)
                        Text("Sign up here").foregroundColor(.white)
                    }
                }
                
                NavigationLink(destination: ForgotPasswordView().environmentObject(userModel)) {
                    HStack {
                        Text("Forgot password?").foregroundColor(.white)
                    }
                }.padding()
            }
            .navigationBarHidden(true)

        }
    }
}
