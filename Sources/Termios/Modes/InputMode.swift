private import CTermios

@frozen
public struct InputMode: Mode {

    public let rawValue: UInt

    @inlinable
    public init(rawValue: UInt) {
        self.rawValue = rawValue
    }
}

extension InputMode {

    /// `IGNBRK`
    public static let ignoreBreak: InputMode = .init(rawValue: .init(CTermios::IGNBRK))

    /// `BRKINT`
    public static let interruptOnBreak: InputMode = .init(rawValue: .init(CTermios::BRKINT))

    /// `IGNPAR`
    public static let ignoreParityErrors: InputMode = .init(rawValue: .init(CTermios::IGNPAR))

    /// `PARMRK`
    public static let markParityErrors: InputMode = .init(rawValue: .init(CTermios::PARMRK))

    /// `INPCK`
    public static let checkInputParity: InputMode = .init(rawValue: .init(CTermios::INPCK))

    /// `ISTRIP`
    public static let stripHighBit: InputMode = .init(rawValue: .init(CTermios::ISTRIP))

    /// `INLCR`
    public static let mapNewlineToCarriageReturn: InputMode = .init(rawValue: .init(CTermios::INLCR))

    /// `IGNCR`
    public static let ignoreCarriageReturn: InputMode = .init(rawValue: .init(CTermios::IGNCR))

    /// `ICRNL`
    public static let mapCarriageReturnToNewline: InputMode = .init(rawValue: .init(CTermios::ICRNL))

    /// `IXON`
    public static let outputSoftwareFlowControl: InputMode = .init(rawValue: .init(CTermios::IXON))

    /// `IXOFF`
    public static let inputSoftwareFlowControl: InputMode = .init(rawValue: .init(CTermios::IXOFF))

    /// `IXANY`
    public static let restartOutputOnAnyCharacter: InputMode = .init(rawValue: .init(CTermios::IXANY))

    /// `IMAXBEL`
    public static let ringBellOnInputOverflow: InputMode = .init(rawValue: .init(CTermios::IMAXBEL))
}

extension InputMode {

    @available(*, deprecated, renamed: "ignoreBreak")
    public static var IGNBRK: InputMode {
        .ignoreBreak
    }

    @available(*, deprecated, renamed: "interruptOnBreak")
    public static var BRKINT: InputMode {
        .interruptOnBreak
    }

    @available(*, deprecated, renamed: "ignoreParityErrors")
    public static var IGNPAR: InputMode {
        .ignoreParityErrors
    }

    @available(*, deprecated, renamed: "markParityErrors")
    public static var PARMRK: InputMode {
        .markParityErrors
    }

    @available(*, deprecated, renamed: "checkInputParity")
    public static var INPCK: InputMode {
        .checkInputParity
    }

    @available(*, deprecated, renamed: "stripHighBit")
    public static var ISTRIP: InputMode {
        .stripHighBit
    }

    @available(*, deprecated, renamed: "mapNewlineToCarriageReturn")
    public static var INLCR: InputMode {
        .mapNewlineToCarriageReturn
    }

    @available(*, deprecated, renamed: "ignoreCarriageReturn")
    public static var IGNCR: InputMode {
        .ignoreCarriageReturn
    }

    @available(*, deprecated, renamed: "mapCarriageReturnToNewline")
    public static var ICRNL: InputMode {
        .mapCarriageReturnToNewline
    }

    @available(*, deprecated, renamed: "outputSoftwareFlowControl")
    public static var IXON: InputMode {
        .outputSoftwareFlowControl
    }

    @available(*, deprecated, renamed: "inputSoftwareFlowControl")
    public static var IXOFF: InputMode {
        .inputSoftwareFlowControl
    }

    @available(*, deprecated, renamed: "restartOutputOnAnyCharacter")
    public static var IXANY: InputMode {
        .restartOutputOnAnyCharacter
    }

    @available(*, deprecated, renamed: "ringBellOnInputOverflow")
    public static var IMAXBEL: InputMode {
        .ringBellOnInputOverflow
    }
}
