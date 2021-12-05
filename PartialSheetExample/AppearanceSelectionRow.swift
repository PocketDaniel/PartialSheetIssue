
import SwiftUI

struct AppearanceSelectionRow: View {
    private let icon: Image
    private let title: String
    private let isSelected: Bool

    init(
        icon: Image,
        title: String,
        isSelected: Bool = false
    ) {
        self.icon = icon
        self.title = title
        self.isSelected = isSelected
    }

    var body: some View {
        HStack {
            icon
                .frame(width: 30.0, height: 30.0)
                .padding(.trailing, 0.0)
            
            Text("\(title)")
                .padding(.leading)
                .font(.system(size: 14, weight: .medium))
            
            Spacer()
            
            Image(isSelected ? "radioOn" : "radioOff")
                .resizable()
                .frame(width: 20.0, height: 20.0)
        }
    }
}
