import SwiftUI

struct CardView: View {
    var card : Card
    var index: Int
    @State var text: String = ""
    
    var body: some View {
        
        
        if index == 1 {
            
            VStack {
 
                /// Create Account Screen
                Text("Give us a bit of info")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                
                TextField("Email address.....", text: self.$text )
                    .padding()
                    .multilineTextAlignment(.leading)
                    .frame(width: 335, height: 40)
                    .overlay {
                        Capsule(style: .continuous).stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
                    }
                
                PasswordControl("Password.....", text: self.$text)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .frame(width: 335, height: 40)
                    .overlay {
                        Capsule(style: .continuous).stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
                    }
                
                Text("Create Account")
                    .frame(width: 200, height: 15)
                    .padding()
                    .background(Color(hue: 0.523, saturation: 0.0, brightness: 0.177))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .onTapGesture {
                        
                    }
                
                NavigationLink(destination: LoginView()) {
                    HStack {
                        Text("Already have an account?").foregroundColor(.primary)
                        Text("Sign in here").foregroundColor(Color(hue: 0.922, saturation: 0.753, brightness: 0.385))
                    }
                }
                

                
            }
            .offset(x: 0, y: 180)
            
            
        }
        else {
            VStack {
                
                /// Onboarding Message
                Text("Create an account")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                
                
                Text("Create an account and join thousands of players! Play Chess with friends and see who is the true King")
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 17))
                    .frame(width: 335, height: 100)
                    .padding()
            }
            .offset(x: 0, y: 250)
            .padding()
            
        }
    }
}

