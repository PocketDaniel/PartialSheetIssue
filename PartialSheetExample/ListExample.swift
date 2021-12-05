
import SwiftUI
import PartialSheet

struct ListExample: View {
    @EnvironmentObject var partialSheetManager: PartialSheetManager
    
    var body: some View {
        GeometryReader { reader in
            List {
                Section(
                    header: Text("Appearance")
                        .frame(width: max(reader.size.width - 40, 0), height: 50, alignment: .leading)
                        .font(.system(size: 12, weight: .semibold))
                ) {
                    Button(action: {
                        self.partialSheetManager.showPartialSheet {
                            AppearanceSelectorView(
                                appearance: .dark,
                                onChange: { _ in
                                    self.partialSheetManager.closePartialSheet()
                                }
                            )
                        }
                    }) {
                        HStack {
                            SettingsRowView(
                                icon: Image("AppearanceSettings"),
                                title: "Appearance",
                                value: "Light"
                            )
                            
                            Image(systemName: "chevron.right").foregroundColor(Color.gray)
                        }
                    }.foregroundColor(.primary)
                }
                .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            }
        }
    }
}
