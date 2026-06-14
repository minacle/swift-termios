private import CTermios

public struct OptionalActions: OptionSet, Sendable {

    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

extension OptionalActions {

    /// `TCSANOW`
    public static let now: OptionalActions = .init(rawValue: .init(CTermios::TCSANOW))

    /// `TCSADRAIN`
    public static let afterOutputDrains: OptionalActions = .init(rawValue: .init(CTermios::TCSADRAIN))

    /// `TCSAFLUSH`
    public static let afterOutputDrainsAndDiscardInput: OptionalActions = .init(rawValue: .init(CTermios::TCSAFLUSH))
}

extension OptionalActions {

    @available(*, deprecated, renamed: "now")
    public static var TCSANOW: OptionalActions {
        .now
    }

    @available(*, deprecated, renamed: "afterOutputDrains")
    public static var TCSADRAIN: OptionalActions {
        .afterOutputDrains
    }

    @available(*, deprecated, renamed: "afterOutputDrainsAndDiscardInput")
    public static var TCSAFLUSH: OptionalActions {
        .afterOutputDrainsAndDiscardInput
    }
}
