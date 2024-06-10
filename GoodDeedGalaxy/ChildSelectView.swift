import SwiftUI
import LocalAuthentication

struct ChildSelectView: View {
    @Environment(\.presentationMode) private var
        presentationMode: Binding<PresentationMode>
    @State var childCorrect = false
    @State var childIncorrect = false
    @ObservedObject var scene = goToPages()
    @State private var showingAlert = false
    @State private var showingPopover = false
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    @State var password: String = ""
    @State var presentparentPage = false
    @State var passwordTxt = ""
    @State private var isUnlocked = false
    @State var showingAlertCon = false
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                // background
                Image("Galaxybackground.")
                    .resizable()
                    .ignoresSafeArea(edges: .top)
                
                VStack {
                    Text("Choose which child you’d like to give the chore to.")
                        .font(.title)
                        .padding()
                    
                    // how we display the child info we created
                    ForEach(childinfo, id: \.self) { childinfo in
                        
                        // calling the file where we have all of the child info
                        ChildAlertView(showingAlert: $showingAlertCon ,childinfo: childinfo)
                    }.onTapGesture {
                        showingAlertCon.toggle()
                    }
                    // end code
                    
                }
                .foregroundStyle(.white)
                
                .alert("Are you sure you want to assign this chore to do this child?", isPresented: $showingAlertCon) {
                    
                    Button("Yes", role: .cancel) {
                        childCorrect.toggle()
                        scene.state = .ChoresView
                        
                    }
                    Button("No", role: .destructive) {
                        //childIncorrect.toggle()
                         scene.state = .ChildSelectView
                    }
                }
            }
            
        }
    }
}
#Preview {
    ChildSelectView()
    
}

