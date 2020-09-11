// swiftlint:disable all
// Generated using Fugen - https://github.com/almazrafi/Fugen

#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

internal struct TextStyle: Equatable {

    // MARK: - Nested Types

    internal enum ValidationError: Error, CustomStringConvertible {
        case fontNotFound(name: String, size: Double)

        internal var description: String {
            switch self {
            case let .fontNotFound(name, size):
                return "Font '\(name) \(size)' couldn't be loaded"
            }
        }
    }

    // MARK: - Type Properties

    /// SF Subhead Regular
    ///
    /// Font: SF Pro Text (SFProText-Regular); weight 400.0; size 14.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 18.0
    /// Letter spacing: -0.15
    internal static let sfSubheadRegular = TextStyle(
        font: UIFont.systemFont(ofSize: 14.0, weight: .regular),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 18.0,
        letterSpacing: -0.15
    )

    /// SF Subhead Medium
    ///
    /// Font: SF Pro Text (SFProText-Medium); weight 500.0; size 14.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 18.0
    /// Letter spacing: -0.15
    internal static let sfSubheadMedium = TextStyle(
        font: UIFont.systemFont(ofSize: 14.0, weight: .medium),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 18.0,
        letterSpacing: -0.15
    )

    /// SF Subhead Semibold
    ///
    /// Font: SF Pro Text (SFProText-Semibold); weight 600.0; size 14.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 18.0
    /// Letter spacing: -0.15
    internal static let sfSubheadSemibold = TextStyle(
        font: UIFont.systemFont(ofSize: 14.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 18.0,
        letterSpacing: -0.15
    )

    /// SF Subhead Bold
    ///
    /// Font: SF Pro Text (SFProText-Bold); weight 700.0; size 14.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 18.0
    /// Letter spacing: -0.15
    internal static let sfSubheadBold = TextStyle(
        font: UIFont.systemFont(ofSize: 14.0, weight: .bold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 18.0,
        letterSpacing: -0.15
    )

    /// SF Caption 1 Regular
    ///
    /// Font: SF Pro Text (SFProText-Regular); weight 400.0; size 13.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 16.0
    /// Letter spacing: -0.075
    internal static let sfCaption1Regular = TextStyle(
        font: UIFont.systemFont(ofSize: 13.0, weight: .regular),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 16.0,
        letterSpacing: -0.075
    )

    /// SF Caption 1 Medium
    ///
    /// Font: SF Pro Text (SFProText-Medium); weight 500.0; size 13.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 16.0
    /// Letter spacing: -0.075
    internal static let sfCaption1Medium = TextStyle(
        font: UIFont.systemFont(ofSize: 13.0, weight: .medium),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 16.0,
        letterSpacing: -0.075
    )

    /// SF Caption Caps 1 Semibold
    ///
    /// Font: SF Pro Text (SFProText-Semibold); weight 600.0; size 13.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 16.0
    /// Letter spacing: -0.075
    internal static let sfCaptionCaps1Semibold = TextStyle(
        font: UIFont.systemFont(ofSize: 13.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 16.0,
        letterSpacing: -0.075
    )

    /// SF Caption 1 Semibold
    ///
    /// Font: SF Pro Text (SFProText-Semibold); weight 600.0; size 13.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 16.0
    /// Letter spacing: -0.075
    internal static let sfCaption1Semibold = TextStyle(
        font: UIFont.systemFont(ofSize: 13.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 16.0,
        letterSpacing: -0.075
    )

    /// SF Caption Caps 2 Semibold
    ///
    /// Font: SF Pro Text (SFProText-Semibold); weight 600.0; size 12.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 14.0
    /// Letter spacing: 0.0
    internal static let sfCaptionCaps2Semibold = TextStyle(
        font: UIFont.systemFont(ofSize: 12.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 14.0,
        letterSpacing: 0.0
    )

    /// SF Caption 2 Regular
    ///
    /// Font: SF Pro Text (SFProText-Regular); weight 400.0; size 12.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 14.0
    /// Letter spacing: 0.0
    internal static let sfCaption2Regular = TextStyle(
        font: UIFont.systemFont(ofSize: 12.0, weight: .regular),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 14.0,
        letterSpacing: 0.0
    )

    /// SF Caption 2 Medium
    ///
    /// Font: SF Pro Text (SFProText-Medium); weight 500.0; size 12.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 14.0
    /// Letter spacing: 0.0
    internal static let sfCaption2Medium = TextStyle(
        font: UIFont.systemFont(ofSize: 12.0, weight: .medium),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 14.0,
        letterSpacing: 0.0
    )

    /// SF Caption 2 Semibold
    ///
    /// Font: SF Pro Text (SFProText-Semibold); weight 600.0; size 12.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 14.0
    /// Letter spacing: 0.0
    internal static let sfCaption2Semibold = TextStyle(
        font: UIFont.systemFont(ofSize: 12.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 14.0,
        letterSpacing: 0.0
    )

    /// SF Caption Caps 3 Semibold
    ///
    /// Font: SF Pro Text (SFProText-Semibold); weight 600.0; size 11.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 14.0
    /// Letter spacing: 0.05
    internal static let sfCaptionCaps3Semibold = TextStyle(
        font: UIFont.systemFont(ofSize: 11.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 14.0,
        letterSpacing: 0.05
    )

    /// SF Caption 3 Regular
    ///
    /// Font: SF Pro Text (SFProText-Regular); weight 400.0; size 11.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 14.0
    /// Letter spacing: 0.05
    internal static let sfCaption3Regular = TextStyle(
        font: UIFont.systemFont(ofSize: 11.0, weight: .regular),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 14.0,
        letterSpacing: 0.05
    )

    /// SF Caption Caps 4 Bold
    ///
    /// Font: SF Pro Text (SFProText-Bold); weight 700.0; size 9.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 12.0
    /// Letter spacing: 0.175
    internal static let sfCaptionCaps4Bold = TextStyle(
        font: UIFont.systemFont(ofSize: 9.0, weight: .bold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 12.0,
        letterSpacing: 0.175
    )

    /// SF Caption 4 Regular
    ///
    /// Font: SF Pro Text (SFProText-Regular); weight 400.0; size 9.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 12.0
    /// Letter spacing: 0.175
    internal static let sfCaption4Regular = TextStyle(
        font: UIFont.systemFont(ofSize: 9.0, weight: .regular),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 12.0,
        letterSpacing: 0.175
    )

    /// SF Text Regular
    ///
    /// Font: SF Pro Text (SFProText-Regular); weight 400.0; size 15.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 20.0
    /// Letter spacing: -0.25
    internal static let sfTextRegular = TextStyle(
        font: UIFont.systemFont(ofSize: 15.0, weight: .regular),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 20.0,
        letterSpacing: -0.25
    )

    /// SF Text Medium
    ///
    /// Font: SF Pro Text (SFProText-Medium); weight 500.0; size 15.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 20.0
    /// Letter spacing: -0.25
    internal static let sfTextMedium = TextStyle(
        font: UIFont.systemFont(ofSize: 15.0, weight: .medium),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 20.0,
        letterSpacing: -0.25
    )

    /// SF Text Semibold
    ///
    /// Font: SF Pro Text (SFProText-Semibold); weight 600.0; size 15.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 20.0
    /// Letter spacing: -0.25
    internal static let sfTextSemibold = TextStyle(
        font: UIFont.systemFont(ofSize: 15.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 20.0,
        letterSpacing: -0.25
    )

    /// SF Headline Regular
    ///
    /// Font: SF Pro Text (SFProText-Regular); weight 400.0; size 16.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 20.0
    /// Letter spacing: -0.325
    internal static let sfHeadlineRegular = TextStyle(
        font: UIFont.systemFont(ofSize: 16.0, weight: .regular),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 20.0,
        letterSpacing: -0.325
    )

    /// SF Headline Medium
    ///
    /// Font: SF Pro Text (SFProText-Medium); weight 500.0; size 16.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 20.0
    /// Letter spacing: -0.325
    internal static let sfHeadlineMedium = TextStyle(
        font: UIFont.systemFont(ofSize: 16.0, weight: .medium),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 20.0,
        letterSpacing: -0.325
    )

    /// SF Headline Semibold
    ///
    /// Font: SF Pro Text (SFProText-Semibold); weight 600.0; size 16.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 20.0
    /// Letter spacing: -0.325
    internal static let sfHeadlineSemibold = TextStyle(
        font: UIFont.systemFont(ofSize: 16.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 20.0,
        letterSpacing: -0.325
    )

    /// SF Title 2 Semibold
    ///
    /// Font: SF Pro Display (SFProDisplay-Semibold); weight 600.0; size 20.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 24.0
    /// Letter spacing: 0.375
    internal static let sfTitle2Semibold = TextStyle(
        font: UIFont.systemFont(ofSize: 20.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 24.0,
        letterSpacing: 0.375
    )

    /// SF Title 2 Regular
    ///
    /// Font: SF Pro Display (SFProDisplay-Regular); weight 400.0; size 20.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 24.0
    /// Letter spacing: 0.375
    internal static let sfTitle2Regular = TextStyle(
        font: UIFont.systemFont(ofSize: 20.0, weight: .regular),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 24.0,
        letterSpacing: 0.375
    )

    /// SF Title 2 Heavy
    ///
    /// Font: SF Pro Display (SFProDisplay-Heavy); weight 400.0; size 20.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 24.0
    /// Letter spacing: 0.375
    internal static let sfTitle2Heavy = TextStyle(
        font: UIFont.systemFont(ofSize: 20.0, weight: .heavy),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 24.0,
        letterSpacing: 0.375
    )

    /// SF Title 1 Semibold
    ///
    /// Font: SF Pro Display (SFProDisplay-Semibold); weight 600.0; size 24.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 28.0
    /// Letter spacing: 0.325
    internal static let sfTitle1Semibold = TextStyle(
        font: UIFont.systemFont(ofSize: 24.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 28.0,
        letterSpacing: 0.325
    )

    /// SF Title 1 Bold
    ///
    /// Font: SF Pro Display (SFProDisplay-Bold); weight 700.0; size 24.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 28.0
    /// Letter spacing: 0.325
    internal static let sfTitle1Bold = TextStyle(
        font: UIFont.systemFont(ofSize: 24.0, weight: .bold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 28.0,
        letterSpacing: 0.325
    )

    /// SF Title 1 Heavy
    ///
    /// Font: SF Pro Display (SFProDisplay-Heavy); weight 400.0; size 24.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 28.0
    /// Letter spacing: 0.325
    internal static let sfTitle1Heavy = TextStyle(
        font: UIFont.systemFont(ofSize: 24.0, weight: .heavy),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 28.0,
        letterSpacing: 0.325
    )

    /// SF Title 3 Regular
    ///
    /// Font: SF Pro Text (SFProText-Regular); weight 400.0; size 17.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 22.0
    /// Letter spacing: -0.4
    internal static let sfTitle3Regular = TextStyle(
        font: UIFont.systemFont(ofSize: 17.0, weight: .regular),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 22.0,
        letterSpacing: -0.4
    )

    /// SF Title 3 Medium
    ///
    /// Font: SF Pro Text (SFProText-Medium); weight 500.0; size 17.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 22.0
    /// Letter spacing: -0.4
    internal static let sfTitle3Medium = TextStyle(
        font: UIFont.systemFont(ofSize: 17.0, weight: .medium),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 22.0,
        letterSpacing: -0.4
    )

    /// SF Title 3 Semibold
    ///
    /// Font: SF Pro Text (SFProText-Semibold); weight 600.0; size 17.0
    /// Color: Light Text / Primary; hex #000000FF; rgba 0 0 0, 100%
    /// Strikethrough: false
    /// Underline: false
    /// Paragraph spacing: default
    /// Paragraph indent: default
    /// Line height: 22.0
    /// Letter spacing: -0.4
    internal static let sfTitle3Semibold = TextStyle(
        font: UIFont.systemFont(ofSize: 17.0, weight: .semibold),
        color: UIColor(
            red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: 1.0
        ),
        strikethrough: false,
        underline: false,
        paragraphSpacing: nil,
        paragraphIndent: nil,
        lineHeight: 22.0,
        letterSpacing: -0.4
    )

    // MARK: - Instance Properties

    internal let font: UIFont?
    internal let color: UIColor?
    internal let backgroundColor: UIColor?
    internal let strikethrough: Bool
    internal let underline: Bool
    internal let paragraphSpacing: CGFloat?
    internal let paragraphIndent: CGFloat?
    internal let lineHeight: CGFloat?
    internal let letterSpacing: CGFloat?
    internal let lineBreakMode: NSLineBreakMode?
    internal let alignment: NSTextAlignment?

    // MARK: - Initializers

    internal init(
        font: UIFont? = nil,
        color: UIColor? = nil,
        backgroundColor: UIColor? = nil,
        strikethrough: Bool = false,
        underline: Bool = false,
        paragraphSpacing: CGFloat? = nil,
        paragraphIndent: CGFloat? = nil,
        lineHeight: CGFloat? = nil,
        letterSpacing: CGFloat? = nil,
        lineBreakMode: NSLineBreakMode? = nil,
        alignment: NSTextAlignment? = nil
    ) {
        self.font = font
        self.color = color
        self.backgroundColor = backgroundColor
        self.strikethrough = strikethrough
        self.underline = underline
        self.paragraphSpacing = paragraphSpacing
        self.paragraphIndent = paragraphIndent
        self.lineHeight = lineHeight
        self.letterSpacing = letterSpacing
        self.lineBreakMode = lineBreakMode
        self.alignment = alignment
    }

    // MARK: - Instance Methods

    private func attributes(paragraphStyle: NSParagraphStyle?) -> [NSAttributedString.Key: Any] {
        var attributes: [NSAttributedString.Key: Any] = [:]

        if let paragraphStyle = paragraphStyle {
            attributes[.paragraphStyle] = paragraphStyle
        }

        if let font = font {
            attributes[.font] = font
        }

        if let color = color {
            attributes[.foregroundColor] = color
        }

        if let backgroundColor = backgroundColor {
            attributes[.backgroundColor] = backgroundColor
        }

        if strikethrough {
            attributes[.strikethroughStyle] = NSUnderlineStyle.single.rawValue
        }

        if underline {
            attributes[.underlineStyle] = NSUnderlineStyle.single.rawValue
        }

        if let letterSpacing = letterSpacing {
            attributes[.kern] = letterSpacing
        }

        return attributes
    }

    // MARK: -

    internal func paragraphStyle() -> NSParagraphStyle {
        let paragraphStyle = NSMutableParagraphStyle()

        if let lineHeight = lineHeight {
            if let font = font {
                paragraphStyle.lineSpacing = (lineHeight - font.lineHeight) * 0.5
                paragraphStyle.minimumLineHeight = lineHeight - paragraphStyle.lineSpacing
            } else {
                paragraphStyle.lineSpacing = 0.0
                paragraphStyle.minimumLineHeight = lineHeight
            }

            paragraphStyle.maximumLineHeight = paragraphStyle.minimumLineHeight
        }

        if let paragraphSpacing = paragraphSpacing {
            paragraphStyle.paragraphSpacing = paragraphSpacing
        }

        if let paragraphIndent = paragraphIndent {
            paragraphStyle.firstLineHeadIndent = paragraphIndent
        }

        if let lineBreakMode = lineBreakMode {
            paragraphStyle.lineBreakMode = lineBreakMode
        }

        if let alignment = alignment {
            paragraphStyle.alignment = alignment
        }

        return paragraphStyle
    }

    internal func attributes(includingParagraphStyle: Bool = true) -> [NSAttributedString.Key: Any] {
        if includingParagraphStyle {
            return attributes(paragraphStyle: paragraphStyle())
        } else {
            return attributes(paragraphStyle: nil)
        }
    }

    internal func attributedString(
        _ string: String,
        includingParagraphStyle: Bool = true
    ) -> NSAttributedString {
        return NSAttributedString(string: string, style: self, includingParagraphStyle: includingParagraphStyle)
    }

    // MARK: -

    internal func withFont(_ font: UIFont?) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }

    internal func withColor(_ color: UIColor?) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }

    internal func withBackgroundColor(_ backgroundColor: UIColor?) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }

    internal func withStrikethrough(_ strikethrough: Bool) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }

    internal func withUnderline(_ underline: Bool) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }

    internal func withParagraphSpacing(_ paragraphSpacing: CGFloat?) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }

    internal func withParagraphIndent(_ paragraphIndent: CGFloat?) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }

    internal func withLineHeight(_ lineHeight: CGFloat?) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }

    internal func withLetterSpacing(_ letterSpacing: CGFloat?) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }

    internal func withLineBreakMode(_ lineBreakMode: NSLineBreakMode?) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }

    internal func withAlignment(_ alignment: NSTextAlignment?) -> TextStyle {
        return TextStyle(
            font: font,
            color: color,
            backgroundColor: backgroundColor,
            strikethrough: strikethrough,
            underline: underline,
            paragraphSpacing: paragraphSpacing,
            paragraphIndent: paragraphIndent,
            lineHeight: lineHeight,
            letterSpacing: letterSpacing,
            lineBreakMode: lineBreakMode,
            alignment: alignment
        )
    }
}

internal extension NSAttributedString {

    // MARK: - Initializers

    convenience init(string: String, style: TextStyle, includingParagraphStyle: Bool = true) {
        self.init(string: string, attributes: style.attributes(includingParagraphStyle: includingParagraphStyle))
    }
}
