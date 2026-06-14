public import CTermios

@frozen
public struct BaudRate: RawRepresentable, Sendable {

    public let rawValue: CTermios::speed_t

    @inlinable
    public init(rawValue: CTermios::speed_t) {
        self.rawValue = rawValue
    }
}

extension BaudRate {

    /// `B0`
    public static let zero: BaudRate = .init(rawValue: .init(CTermios::B0))

    /// `B50`
    public static let baud50: BaudRate = .init(rawValue: .init(CTermios::B50))

    /// `B75`
    public static let baud75: BaudRate = .init(rawValue: .init(CTermios::B75))

    /// `B110`
    public static let baud110: BaudRate = .init(rawValue: .init(CTermios::B110))

    /// `B134`
    public static let baud134: BaudRate = .init(rawValue: .init(CTermios::B134))

    /// `B150`
    public static let baud150: BaudRate = .init(rawValue: .init(CTermios::B150))

    /// `B200`
    public static let baud200: BaudRate = .init(rawValue: .init(CTermios::B200))

    /// `B300`
    public static let baud300: BaudRate = .init(rawValue: .init(CTermios::B300))

    /// `B600`
    public static let baud600: BaudRate = .init(rawValue: .init(CTermios::B600))

    /// `B1200`
    public static let baud1200: BaudRate = .init(rawValue: .init(CTermios::B1200))

    /// `B1800`
    public static let baud1800: BaudRate = .init(rawValue: .init(CTermios::B1800))

    /// `B2400`
    public static let baud2400: BaudRate = .init(rawValue: .init(CTermios::B2400))

    /// `B4800`
    public static let baud4800: BaudRate = .init(rawValue: .init(CTermios::B4800))

    /// `B9600`
    public static let baud9600: BaudRate = .init(rawValue: .init(CTermios::B9600))

    /// `B19200`
    public static let baud19200: BaudRate = .init(rawValue: .init(CTermios::B19200))

    /// `B38400`
    public static let baud38400: BaudRate = .init(rawValue: .init(CTermios::B38400))

#if !os(Linux)
    /// `B7200`
    public static let baud7200: BaudRate = .init(rawValue: .init(CTermios::B7200))

    /// `B14400`
    public static let baud14400: BaudRate = .init(rawValue: .init(CTermios::B14400))

    /// `B28800`
    public static let baud28800: BaudRate = .init(rawValue: .init(CTermios::B28800))
#endif

    /// `B57600`
    public static let baud57600: BaudRate = .init(rawValue: .init(CTermios::B57600))

#if !os(Linux)
    /// `B76800`
    public static let baud76800: BaudRate = .init(rawValue: .init(CTermios::B76800))
#endif

    /// `B115200`
    public static let baud115200: BaudRate = .init(rawValue: .init(CTermios::B115200))

    /// `B230400`
    public static let baud230400: BaudRate = .init(rawValue: .init(CTermios::B230400))
}

extension BaudRate {

    @available(*, deprecated, renamed: "zero")
    public static var B0: BaudRate {
        .zero
    }

    @available(*, deprecated, renamed: "baud50")
    public static var B50: BaudRate {
        .baud50
    }

    @available(*, deprecated, renamed: "baud75")
    public static var B75: BaudRate {
        .baud75
    }

    @available(*, deprecated, renamed: "baud110")
    public static var B110: BaudRate {
        .baud110
    }

    @available(*, deprecated, renamed: "baud134")
    public static var B134: BaudRate {
        .baud134
    }

    @available(*, deprecated, renamed: "baud150")
    public static var B150: BaudRate {
        .baud150
    }

    @available(*, deprecated, renamed: "baud200")
    public static var B200: BaudRate {
        .baud200
    }

    @available(*, deprecated, renamed: "baud300")
    public static var B300: BaudRate {
        .baud300
    }

    @available(*, deprecated, renamed: "baud600")
    public static var B600: BaudRate {
        .baud600
    }

    @available(*, deprecated, renamed: "baud1200")
    public static var B1200: BaudRate {
        .baud1200
    }

    @available(*, deprecated, renamed: "baud1800")
    public static var B1800: BaudRate {
        .baud1800
    }

    @available(*, deprecated, renamed: "baud2400")
    public static var B2400: BaudRate {
        .baud2400
    }

    @available(*, deprecated, renamed: "baud4800")
    public static var B4800: BaudRate {
        .baud4800
    }

    @available(*, deprecated, renamed: "baud9600")
    public static var B9600: BaudRate {
        .baud9600
    }

    @available(*, deprecated, renamed: "baud19200")
    public static var B19200: BaudRate {
        .baud19200
    }

    @available(*, deprecated, renamed: "baud38400")
    public static var B38400: BaudRate {
        .baud38400
    }

#if !os(Linux)
    @available(*, deprecated, renamed: "baud7200")
    public static var B7200: BaudRate {
        .baud7200
    }

    @available(*, deprecated, renamed: "baud14400")
    public static var B14400: BaudRate {
        .baud14400
    }

    @available(*, deprecated, renamed: "baud28800")
    public static var B28800: BaudRate {
        .baud28800
    }
#endif

    @available(*, deprecated, renamed: "baud57600")
    public static var B57600: BaudRate {
        .baud57600
    }

#if !os(Linux)
    @available(*, deprecated, renamed: "baud76800")
    public static var B76800: BaudRate {
        .baud76800
    }
#endif

    @available(*, deprecated, renamed: "baud115200")
    public static var B115200: BaudRate {
        .baud115200
    }

    @available(*, deprecated, renamed: "baud230400")
    public static var B230400: BaudRate {
        .baud230400
    }
}
