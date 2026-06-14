private import CTermios

public struct SpecialControlCharacter: RawRepresentable, Sendable {

    public let rawValue: CInt

    public init(rawValue: CInt) {
        self.rawValue = rawValue
    }
}

extension SpecialControlCharacter {

    /// `VEOF`
    public static let endOfFile: SpecialControlCharacter = .init(rawValue: .init(CTermios::VEOF))

    /// `VEOL`
    public static let endOfLine: SpecialControlCharacter = .init(rawValue: .init(CTermios::VEOL))

    /// `VEOL2`
    public static let alternateEndOfLine: SpecialControlCharacter = .init(rawValue: .init(CTermios::VEOL2))

    /// `VERASE`
    public static let erase: SpecialControlCharacter = .init(rawValue: .init(CTermios::VERASE))

    /// `VWERASE`
    public static let wordErase: SpecialControlCharacter = .init(rawValue: .init(CTermios::VWERASE))

    /// `VKILL`
    public static let kill: SpecialControlCharacter = .init(rawValue: .init(CTermios::VKILL))

    /// `VREPRINT`
    public static let reprint: SpecialControlCharacter = .init(rawValue: .init(CTermios::VREPRINT))

    /// `VINTR`
    public static let interrupt: SpecialControlCharacter = .init(rawValue: .init(CTermios::VINTR))

    /// `VQUIT`
    public static let quit: SpecialControlCharacter = .init(rawValue: .init(CTermios::VQUIT))

    /// `VSUSP`
    public static let suspend: SpecialControlCharacter = .init(rawValue: .init(CTermios::VSUSP))

#if !os(Linux)
    /// `VDSUSP`
    public static let delayedSuspend: SpecialControlCharacter = .init(rawValue: .init(CTermios::VDSUSP))
#endif

    /// `VSTART`
    public static let start: SpecialControlCharacter = .init(rawValue: .init(CTermios::VSTART))

    /// `VSTOP`
    public static let stop: SpecialControlCharacter = .init(rawValue: .init(CTermios::VSTOP))

    /// `VLNEXT`
    public static let literalNext: SpecialControlCharacter = .init(rawValue: .init(CTermios::VLNEXT))

    /// `VDISCARD`
    public static let discard: SpecialControlCharacter = .init(rawValue: .init(CTermios::VDISCARD))

    /// `VMIN`
    public static let minimumInputCount: SpecialControlCharacter = .init(rawValue: .init(CTermios::VMIN))

    /// `VTIME`
    public static let inputTimeout: SpecialControlCharacter = .init(rawValue: .init(CTermios::VTIME))

#if !os(Linux)
    /// `VSTATUS`
    public static let status: SpecialControlCharacter = .init(rawValue: .init(CTermios::VSTATUS))
#endif
}

extension SpecialControlCharacter {

    @available(*, deprecated, renamed: "endOfFile")
    public static var VEOF: SpecialControlCharacter {
        .endOfFile
    }

    @available(*, deprecated, renamed: "endOfLine")
    public static var VEOL: SpecialControlCharacter {
        .endOfLine
    }

    @available(*, deprecated, renamed: "alternateEndOfLine")
    public static var VEOL2: SpecialControlCharacter {
        .alternateEndOfLine
    }

    @available(*, deprecated, renamed: "erase")
    public static var VERASE: SpecialControlCharacter {
        .erase
    }

    @available(*, deprecated, renamed: "wordErase")
    public static var VWERASE: SpecialControlCharacter {
        .wordErase
    }

    @available(*, deprecated, renamed: "kill")
    public static var VKILL: SpecialControlCharacter {
        .kill
    }

    @available(*, deprecated, renamed: "reprint")
    public static var VREPRINT: SpecialControlCharacter {
        .reprint
    }

    @available(*, deprecated, renamed: "interrupt")
    public static var VINTR: SpecialControlCharacter {
        .interrupt
    }

    @available(*, deprecated, renamed: "quit")
    public static var VQUIT: SpecialControlCharacter {
        .quit
    }

    @available(*, deprecated, renamed: "suspend")
    public static var VSUSP: SpecialControlCharacter {
        .suspend
    }

#if !os(Linux)
    @available(*, deprecated, renamed: "delayedSuspend")
    public static var VDSUSP: SpecialControlCharacter {
        .delayedSuspend
    }
#endif

    @available(*, deprecated, renamed: "start")
    public static var VSTART: SpecialControlCharacter {
        .start
    }

    @available(*, deprecated, renamed: "stop")
    public static var VSTOP: SpecialControlCharacter {
        .stop
    }

    @available(*, deprecated, renamed: "literalNext")
    public static var VLNEXT: SpecialControlCharacter {
        .literalNext
    }

    @available(*, deprecated, renamed: "discard")
    public static var VDISCARD: SpecialControlCharacter {
        .discard
    }

    @available(*, deprecated, renamed: "minimumInputCount")
    public static var VMIN: SpecialControlCharacter {
        .minimumInputCount
    }

    @available(*, deprecated, renamed: "inputTimeout")
    public static var VTIME: SpecialControlCharacter {
        .inputTimeout
    }

#if !os(Linux)
    @available(*, deprecated, renamed: "status")
    public static var VSTATUS: SpecialControlCharacter {
        .status
    }
#endif
}
