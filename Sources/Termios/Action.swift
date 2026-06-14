private import CTermios

@frozen
public struct Action: RawRepresentable, Sendable {

    public let rawValue: CInt

    @inlinable
    public init(rawValue: CInt) {
        self.rawValue = rawValue
    }
}

extension Action {

    /// `TCOOFF`
    public static let suspendOutput: Action = .init(rawValue: CTermios::TCOOFF)

    /// `TCOON`
    public static let resumeOutput: Action = .init(rawValue: CTermios::TCOON)

    /// `TCIOFF`
    public static let sendStopCharacter: Action = .init(rawValue: CTermios::TCIOFF)

    /// `TCION`
    public static let sendStartCharacter: Action = .init(rawValue: CTermios::TCION)
}

extension Action {

    @available(*, deprecated, renamed: "suspendOutput")
    public static var TCOOFF: Action {
        .suspendOutput
    }

    @available(*, deprecated, renamed: "resumeOutput")
    public static var TCOON: Action {
        .resumeOutput
    }

    @available(*, deprecated, renamed: "sendStopCharacter")
    public static var TCIOFF: Action {
        .sendStopCharacter
    }

    @available(*, deprecated, renamed: "sendStartCharacter")
    public static var TCION: Action {
        .sendStartCharacter
    }
}
