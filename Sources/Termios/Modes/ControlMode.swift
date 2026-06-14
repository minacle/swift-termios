private import CTermios

public struct ControlMode: Mode {

    public let rawValue: UInt

    public init(rawValue: UInt) {
        self.rawValue = rawValue
    }
}

extension ControlMode {

    /// `CSIZE`
    public static let characterSizeMask: ControlMode = .init(rawValue: .init(CTermios::CSIZE))

    /// `CS5`
    public static let fiveBitCharacters: ControlMode = .init(rawValue: .init(CTermios::CS5))

    /// `CS6`
    public static let sixBitCharacters: ControlMode = .init(rawValue: .init(CTermios::CS6))

    /// `CS7`
    public static let sevenBitCharacters: ControlMode = .init(rawValue: .init(CTermios::CS7))

    /// `CS8`
    public static let eightBitCharacters: ControlMode = .init(rawValue: .init(CTermios::CS8))

    /// `CSTOPB`
    public static let twoStopBits: ControlMode = .init(rawValue: .init(CTermios::CSTOPB))

    /// `CREAD`
    public static let enableReceiver: ControlMode = .init(rawValue: .init(CTermios::CREAD))

    /// `PARENB`
    public static let enableParity: ControlMode = .init(rawValue: .init(CTermios::PARENB))

    /// `PARODD`
    public static let oddParity: ControlMode = .init(rawValue: .init(CTermios::PARODD))

    /// `HUPCL`
    public static let hangUpOnClose: ControlMode = .init(rawValue: .init(CTermios::HUPCL))

    /// `CLOCAL`
    public static let ignoreModemStatusLines: ControlMode = .init(rawValue: .init(CTermios::CLOCAL))

#if !os(Linux)
    /// `CCTS_OFLOW`
    public static let outputHardwareFlowControl: ControlMode = .init(rawValue: .init(CTermios::CCTS_OFLOW))
#endif

    /// `CRTSCTS`
    public static let hardwareFlowControl: ControlMode = .init(rawValue: .init(CTermios::CRTSCTS))

#if !os(Linux)
    /// `CRTS_IFLOW`
    public static let inputHardwareFlowControl: ControlMode = .init(rawValue: .init(CTermios::CRTS_IFLOW))

    /// `MDMBUF`
    public static let modemFlowControl: ControlMode = .init(rawValue: .init(CTermios::MDMBUF))
#endif
}

extension ControlMode {

    @available(*, deprecated, renamed: "characterSizeMask")
    public static var CSIZE: ControlMode {
        .characterSizeMask
    }

    @available(*, deprecated, renamed: "fiveBitCharacters")
    public static var CS5: ControlMode {
        .fiveBitCharacters
    }

    @available(*, deprecated, renamed: "sixBitCharacters")
    public static var CS6: ControlMode {
        .sixBitCharacters
    }

    @available(*, deprecated, renamed: "sevenBitCharacters")
    public static var CS7: ControlMode {
        .sevenBitCharacters
    }

    @available(*, deprecated, renamed: "eightBitCharacters")
    public static var CS8: ControlMode {
        .eightBitCharacters
    }

    @available(*, deprecated, renamed: "twoStopBits")
    public static var CSTOPB: ControlMode {
        .twoStopBits
    }

    @available(*, deprecated, renamed: "enableReceiver")
    public static var CREAD: ControlMode {
        .enableReceiver
    }

    @available(*, deprecated, renamed: "enableParity")
    public static var PARENB: ControlMode {
        .enableParity
    }

    @available(*, deprecated, renamed: "oddParity")
    public static var PARODD: ControlMode {
        .oddParity
    }

    @available(*, deprecated, renamed: "hangUpOnClose")
    public static var HUPCL: ControlMode {
        .hangUpOnClose
    }

    @available(*, deprecated, renamed: "ignoreModemStatusLines")
    public static var CLOCAL: ControlMode {
        .ignoreModemStatusLines
    }

#if !os(Linux)
    @available(*, deprecated, renamed: "outputHardwareFlowControl")
    public static var CCTS_OFLOW: ControlMode {
        .outputHardwareFlowControl
    }
#endif

    @available(*, deprecated, renamed: "hardwareFlowControl")
    public static var CRTSCTS: ControlMode {
        .hardwareFlowControl
    }

#if !os(Linux)
    @available(*, deprecated, renamed: "inputHardwareFlowControl")
    public static var CRTS_IFLOW: ControlMode {
        .inputHardwareFlowControl
    }

    @available(*, deprecated, renamed: "modemFlowControl")
    public static var MDMBUF: ControlMode {
        .modemFlowControl
    }
#endif
}
