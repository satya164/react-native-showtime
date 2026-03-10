import ShowTime
import UIKit

@objc(ShowTimeConfigHelper)
public class ShowTimeConfigHelper: NSObject {

    @objc public static func setEnabled(_ value: String) {
        switch value {
        case "always":
            ShowTime.enabled = .always
        case "never":
            ShowTime.enabled = .never
        case "debugOnly":
            ShowTime.enabled = .debugOnly
        default:
            break
        }
    }

    @objc public static func setFillColorAuto() {
        ShowTime.fillColor = .auto
    }

    @objc public static func setFillColor(_ color: UIColor) {
        ShowTime.fillColor = color
    }

    @objc public static func setStrokeColor(_ color: UIColor) {
        ShowTime.strokeColor = color
    }

    @objc public static func setStrokeWidth(_ width: CGFloat) {
        ShowTime.strokeWidth = width
    }

    @objc public static func setSize(_ size: CGFloat) {
        ShowTime.size = CGSize(width: size, height: size)
    }

    @objc public static func setDisappearAnimation(_ name: String) {
        switch name {
        case "standard":
            ShowTime.disappearAnimation = .standard
        case "scaleDown":
            ShowTime.disappearAnimation = .scaleDown
        case "scaleUp":
            ShowTime.disappearAnimation = .scaleUp
        default:
            break
        }
    }

    @objc public static func setDisappearDelay(_ delay: TimeInterval) {
        ShowTime.disappearDelay = delay
    }

    @objc public static func setShouldShowMultipleTapCount(_ show: Bool) {
        ShowTime.shouldShowMultipleTapCount = show
    }

    @objc public static func setMultipleTapCountTextColor(_ color: UIColor) {
        ShowTime.multipleTapCountTextColor = color
    }

    @objc public static func setShouldShowForce(_ show: Bool) {
        ShowTime.shouldShowForce = show
    }

    @objc public static func setShouldIgnoreApplePencilEvents(_ ignore: Bool) {
        ShowTime.shouldIgnoreApplePencilEvents = ignore
    }
}
