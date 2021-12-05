
import SwiftUI

struct SettingsRowView: View {
    private let icon: Image
    private let title: String
    private let value: String?

    init(
        icon: Image,
        title: String,
        value: String? = nil
    ) {
        self.icon = icon
        self.title = title
        self.value = value
    }
    
    var body: some View {
        HStack {
            icon
                .frame(width: 30.0, height: 30.0)
                .padding(.vertical, 16.0)
                .padding(.trailing, 0.0)
            
            Text("\(title)")
                .padding(.leading)
                .font(.system(size: 14, weight: .medium))
            
            Spacer()
            
            if let _value = value {
                Text("\(_value)")
                    .font(.system(size: 16))
            }
        }
    }
}
