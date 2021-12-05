
import SwiftUI

public struct AppearanceSelectorView: View {
    private let appearance: Appearance
    private let onChange: (Appearance) -> Void
    
    public init(appearance: Appearance, onChange: @escaping (Appearance) -> Void) {
        self.appearance = appearance
        self.onChange = onChange
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            Text("Select theme")
                .foregroundColor(Color.yellow)
                .font(.system(size: 18, weight: .semibold))
            
            VStack(spacing: 32) {
                AppearanceSelectionRow(
                    icon: Image("AppearanceSystem"),
                    title: "System",
                    isSelected: self.appearance == .system
                ).onTapGesture {
                    self.onChange(.system)
                }
                
                AppearanceSelectionRow(
                    icon: Image("AppearanceLight"),
                    title: "Light",
                    isSelected: self.appearance == .light
                ).onTapGesture {
                    self.onChange(.light)
                }

                AppearanceSelectionRow(
                    icon: Image("AppearanceDark"),
                    title: "Dark",
                    isSelected: self.appearance == .dark
                ).onTapGesture {
                    self.onChange(.dark)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(11)
        }
        .padding()
    }
}
