import SwiftUI
import LocalAuthentication

struct LogInView: View {
   @ObservedObject var scene = goToPages()
   @State private var showingAlert = false
   @State private var showingPopover = false
   @State private var username: String = ""
   @FocusState private var emailFieldIsFocused: Bool
   @State var password: String = ""
   @State var presentChildSelectView = false
   @State var passwordTxt = ""
   @State private var isUnlocked = false
   var body: some View {
       ZStack {
           NavigationStack {
               ZStack {
                   // background
                   Image("Galaxybackground.")
                       .resizable()
                       .ignoresSafeArea(edges: .top)
                   VStack {
                       VStack {
                           if isUnlocked {
                               Text("Unlocked")
                           } else {
                               Text("Locked")
                           }
                       }
                       .onAppear(perform: authenticate)
                       
                       VStack {
                           Button(action: {
                               scene.state = .parentcodepage
                           },
                            label: {
                               Image(.parent).font(.largeTitle)
                                   .imageScale(.large)
                                   .foregroundColor(.accentColor)
                           })
                           // lindas
//                           Image(.parent).font(.largeTitle)
//                               .imageScale(.large)
//                               .foregroundColor(.accentColor)
//                               .onTapGesture {
//                                   showingPopover = true
//                               }
//                               .popover(isPresented: $showingPopover) {
//                                   VStack  {
//                                       //                       NavigationLink(destination:);) {
//                                       Text("Parent")
//                                       TextField("EnterPassword", text: $passwordTxt)
//                                       Button(action:{
//                                           if (passwordTxt == "") {
//                                               presentChildSelectView.toggle()
//                                           }
//                                       }){
//                                           Text("To Parent View")
//                                       }.sheet(isPresented: $presentChildSelectView){
//                                           ChildSelectView()
//                                           
//                                       }
//                                   }
//                                   
//                               }
                           
                           Text("Parent")
                           //                .background(Color.red)
                               .font(.largeTitle)
                               .padding()
                           
                           Image ("child").font(.largeTitle)
                               .imageScale(.large)
                               .foregroundColor(.accentColor)
                           Text("Child")
                               .font(.largeTitle)
                               .padding()
                           Text("Your journey to Good Deeds Galaxy begins NOW! Earn rewards, gain more time with friends, and have fun while doing it!")
                               .padding()
                               .background(Color.purple)
                               .foregroundStyle(.black)
                               .cornerRadius(20.0)
                          
                           
                               .padding()
                           
//                           HStack{
//                               VStack{
//                                   Button {
//                                       showingAlert = true
//                                   } label: {
//                                       Image (systemName: "checkmark.seal")
//                                           .font(.largeTitle)
//                                   }
//                               }
//                               
//                               
//                               
//                               .alert("Child completed Task", isPresented: $showingAlert) {
//                                   Button("OK", role: .cancel){
//                                   }
//                               }
//                           }
                       }
                   }
                   
               }
           }
       }
   }
   
   func authenticate() {
       let context = LAContext()
       var error: NSError?
   
   
       if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
           let reason = "UnlockParentPage"
   
           context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
               if success {
                   isUnlocked = true
               } else {
                   print("There is a problem")
                   //                there is a problem
               }
           }
       } else {
           print("no biometrics")
   //        no biometrics
   
       }
   }
   
}
       #Preview {
           LogInView(scene: goToPages())
           
       }

