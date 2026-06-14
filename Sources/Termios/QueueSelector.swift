private import CTermios

public struct QueueSelector: RawRepresentable, Sendable {

    public let rawValue: CInt

    public init(rawValue: CInt) {
        self.rawValue = rawValue
    }
}

extension QueueSelector {

    /// `TCIFLUSH`
    public static let inputQueue: QueueSelector = .init(rawValue: CTermios::TCIFLUSH)

    /// `TCOFLUSH`
    public static let outputQueue: QueueSelector = .init(rawValue: CTermios::TCOFLUSH)

    /// `TCIOFLUSH`
    public static let inputAndOutputQueues: QueueSelector = .init(rawValue: CTermios::TCIOFLUSH)
}

extension QueueSelector {

    @available(*, deprecated, renamed: "inputQueue")
    public static var TCIFLUSH: QueueSelector {
        .inputQueue
    }

    @available(*, deprecated, renamed: "outputQueue")
    public static var TCOFLUSH: QueueSelector {
        .outputQueue
    }

    @available(*, deprecated, renamed: "inputAndOutputQueues")
    public static var TCIOFLUSH: QueueSelector {
        .inputAndOutputQueues
    }
}
