
import SwiftUI
import PartialSheet

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                NavigationLink(
                    destination: ListExample(),
                    label: {Text("List Example")
                    })
            }
            .navigationBarTitle("Partial Sheet")
        }
        .addPartialSheet(style: .mainStyle())
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PartialSheetManager())
    }
}

