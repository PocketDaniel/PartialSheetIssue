
import SwiftUI
import PartialSheet

extension PartialSheetStyle {
    
    public static func mainStyle() -> PartialSheetStyle {
        return PartialSheetStyle(
            background: .solid(Color.gray),
            handlerBarStyle: .solid(Color(UIColor.systemGray2)),
            iPadCloseButtonColor: Color(UIColor.systemGray2),
            enableCover: true,
            coverColor: Color.black.opacity(0.7),
            blurEffectStyle: nil,
            cornerRadius: 11,
            minTopDistance: 110
        )
    }
}

