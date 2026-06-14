private import CTermios

public struct OutputMode: Mode {

    public let rawValue: UInt

    public init(rawValue: UInt) {
        self.rawValue = rawValue
    }
}

extension OutputMode {

    /// `OPOST`
    public static let postprocessOutput: OutputMode = .init(rawValue: .init(CTermios::OPOST))

    /// `ONLCR`
    public static let mapNewlineToCarriageReturnNewline: OutputMode = .init(rawValue: .init(CTermios::ONLCR))

    /// `OXTABS`
    public static let expandTabs: OutputMode = .init(rawValue: .init(CTermios::OXTABS))

    /// `ONOEOT`
    public static let discardEndOfTransmission: OutputMode = .init(rawValue: .init(CTermios::ONOEOT))

    /// `OCRNL`
    public static let mapCarriageReturnToNewline: OutputMode = .init(rawValue: .init(CTermios::OCRNL))

    /// `ONOCR`
    public static let suppressCarriageReturnAtColumnZero: OutputMode = .init(rawValue: .init(CTermios::ONOCR))

    /// `ONLRET`
    public static let newlinePerformsCarriageReturn: OutputMode = .init(rawValue: .init(CTermios::ONLRET))
}

extension OutputMode {

    @available(*, deprecated, renamed: "postprocessOutput")
    public static var OPOST: OutputMode {
        .postprocessOutput
    }

    @available(*, deprecated, renamed: "mapNewlineToCarriageReturnNewline")
    public static var ONLCR: OutputMode {
        .mapNewlineToCarriageReturnNewline
    }

    @available(*, deprecated, renamed: "expandTabs")
    public static var OXTABS: OutputMode {
        .expandTabs
    }

    @available(*, deprecated, renamed: "discardEndOfTransmission")
    public static var ONOEOT: OutputMode {
        .discardEndOfTransmission
    }

    @available(*, deprecated, renamed: "mapCarriageReturnToNewline")
    public static var OCRNL: OutputMode {
        .mapCarriageReturnToNewline
    }

    @available(*, deprecated, renamed: "suppressCarriageReturnAtColumnZero")
    public static var ONOCR: OutputMode {
        .suppressCarriageReturnAtColumnZero
    }

    @available(*, deprecated, renamed: "newlinePerformsCarriageReturn")
    public static var ONLRET: OutputMode {
        .newlinePerformsCarriageReturn
    }
}
