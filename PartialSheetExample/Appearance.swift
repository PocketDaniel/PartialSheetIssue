
import Foundation
import SwiftUI

public enum Appearance {
    case system
    case dark
    case light
    
    public var userInterfaceStyle: UIUserInterfaceStyle {
        switch self {
        case .system:
            return .unspecified
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }
}
