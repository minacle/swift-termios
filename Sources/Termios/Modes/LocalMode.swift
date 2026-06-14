private import CTermios

public struct LocalMode: Mode {

    public let rawValue: UInt

    public init(rawValue: UInt) {
        self.rawValue = rawValue
    }
}

extension LocalMode {

    /// `ECHOKE`
    public static let visuallyEraseLineKill: LocalMode = .init(rawValue: .init(CTermios::ECHOKE))

    /// `ECHOE`
    public static let visuallyEraseCharacters: LocalMode = .init(rawValue: .init(CTermios::ECHOE))

    /// `ECHO`
    public static let echoInput: LocalMode = .init(rawValue: .init(CTermios::ECHO))

    /// `ECHONL`
    public static let echoNewline: LocalMode = .init(rawValue: .init(CTermios::ECHONL))

    /// `ECHOPRT`
    public static let visiblyEraseCharacters: LocalMode = .init(rawValue: .init(CTermios::ECHOPRT))

    /// `ECHOCTL`
    public static let echoControlCharacters: LocalMode = .init(rawValue: .init(CTermios::ECHOCTL))

    /// `ISIG`
    public static let enableSignals: LocalMode = .init(rawValue: .init(CTermios::ISIG))

    /// `ICANON`
    public static let canonicalInput: LocalMode = .init(rawValue: .init(CTermios::ICANON))

    /// `ALTWERASE`
    public static let alternateWordErase: LocalMode = .init(rawValue: .init(CTermios::ALTWERASE))

    /// `IEXTEN`
    public static let extendedInputProcessing: LocalMode = .init(rawValue: .init(CTermios::IEXTEN))

    /// `EXTPROC`
    public static let externalProcessing: LocalMode = .init(rawValue: .init(CTermios::EXTPROC))

    /// `TOSTOP`
    public static let stopBackgroundOutput: LocalMode = .init(rawValue: .init(CTermios::TOSTOP))

    /// `FLUSHO`
    public static let discardOutput: LocalMode = .init(rawValue: .init(CTermios::FLUSHO))

    /// `NOKERNINFO`
    public static let suppressKernelStatusInfo: LocalMode = .init(rawValue: .init(CTermios::NOKERNINFO))

    /// `PENDIN`
    public static let reprintPendingInput: LocalMode = .init(rawValue: .init(CTermios::PENDIN))

    /// `NOFLSH`
    public static let disableFlushOnSignal: LocalMode = .init(rawValue: .init(CTermios::NOFLSH))
}

extension LocalMode {

    @available(*, deprecated, renamed: "visuallyEraseLineKill")
    public static var ECHOKE: LocalMode {
        .visuallyEraseLineKill
    }

    @available(*, deprecated, renamed: "visuallyEraseCharacters")
    public static var ECHOE: LocalMode {
        .visuallyEraseCharacters
    }

    @available(*, deprecated, renamed: "echoInput")
    public static var ECHO: LocalMode {
        .echoInput
    }

    @available(*, deprecated, renamed: "echoNewline")
    public static var ECHONL: LocalMode {
        .echoNewline
    }

    @available(*, deprecated, renamed: "visiblyEraseCharacters")
    public static var ECHOPRT: LocalMode {
        .visiblyEraseCharacters
    }

    @available(*, deprecated, renamed: "echoControlCharacters")
    public static var ECHOCTL: LocalMode {
        .echoControlCharacters
    }

    @available(*, deprecated, renamed: "enableSignals")
    public static var ISIG: LocalMode {
        .enableSignals
    }

    @available(*, deprecated, renamed: "canonicalInput")
    public static var ICANON: LocalMode {
        .canonicalInput
    }

    @available(*, deprecated, renamed: "alternateWordErase")
    public static var ALTWERASE: LocalMode {
        .alternateWordErase
    }

    @available(*, deprecated, renamed: "extendedInputProcessing")
    public static var IEXTEN: LocalMode {
        .extendedInputProcessing
    }

    @available(*, deprecated, renamed: "externalProcessing")
    public static var EXTPROC: LocalMode {
        .externalProcessing
    }

    @available(*, deprecated, renamed: "stopBackgroundOutput")
    public static var TOSTOP: LocalMode {
        .stopBackgroundOutput
    }

    @available(*, deprecated, renamed: "discardOutput")
    public static var FLUSHO: LocalMode {
        .discardOutput
    }

    @available(*, deprecated, renamed: "suppressKernelStatusInfo")
    public static var NOKERNINFO: LocalMode {
        .suppressKernelStatusInfo
    }

    @available(*, deprecated, renamed: "reprintPendingInput")
    public static var PENDIN: LocalMode {
        .reprintPendingInput
    }

    @available(*, deprecated, renamed: "disableFlushOnSignal")
    public static var NOFLSH: LocalMode {
        .disableFlushOnSignal
    }
}
