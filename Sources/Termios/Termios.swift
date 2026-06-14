#if canImport(System)
public import System
#else
public import SystemPackage
#endif
public import CTermios

// MARK: -

@frozen
public struct Termios: Sendable {

    @usableFromInline
    internal var c: termios

    @inlinable
    public init() {
        c = termios()
    }
}

extension Termios {

    @inlinable
    public mutating func read(from fileDescriptor: borrowing FileDescriptor) throws(Errno) {
        guard unsafe tcgetattr(fileDescriptor.rawValue, &c) == 0
        else {
            throw Errno(rawValue: errno)
        }
    }

    @inlinable
    public func apply(to fileDescriptor: borrowing FileDescriptor, when optionalActions: OptionalActions) throws(Errno) {
        let rawFileDescriptor = fileDescriptor.rawValue
        let result: CInt = unsafe withUnsafePointer(to: c) {
            unsafe tcsetattr(rawFileDescriptor, .init(optionalActions.rawValue), $0)
        }
        guard result == 0
        else {
            throw Errno(rawValue: errno)
        }
    }
}

extension Termios {

    @inlinable
    public mutating func makeRaw() {
        unsafe cfmakeraw(&c)
    }
}

extension Termios {

    @inlinable
    public var inputBaudRate: BaudRate {
        BaudRate(rawValue: unsafe withUnsafePointer(to: c) {
            unsafe cfgetispeed($0)
        })
    }

    @inlinable
    public var outputBaudRate: BaudRate {
        BaudRate(rawValue: unsafe withUnsafePointer(to: c) {
            unsafe cfgetospeed($0)
        })
    }
}

extension Termios {

    @inlinable
    public mutating func setInputBaudRate(_ baudRate: BaudRate) {
        unsafe cfsetispeed(&c, baudRate.rawValue)
    }

    @inlinable
    public mutating func setOutputBaudRate(_ baudRate: BaudRate) {
        unsafe cfsetospeed(&c, baudRate.rawValue)
    }

    @inlinable
    public mutating func setBaudRate(_ baudRate: BaudRate) {
        unsafe cfsetspeed(&c, baudRate.rawValue)
    }
}

extension Termios {

    @inlinable
    public init(readingFrom fileDescriptor: borrowing FileDescriptor) throws(Errno) {
        self.init()
        try read(from: fileDescriptor)
    }
}

extension Termios {

    @inlinable
    public var inputMode: InputMode {
        get {
            InputMode(rawValue: .init(c.c_iflag))
        }
        set {
            c.c_iflag = .init(newValue.rawValue)
        }
    }

    @inlinable
    public var outputMode: OutputMode {
        get {
            OutputMode(rawValue: .init(c.c_oflag))
        }
        set {
            c.c_oflag = .init(newValue.rawValue)
        }
    }

    @inlinable
    public var controlMode: ControlMode {
        get {
            ControlMode(rawValue: .init(c.c_cflag))
        }
        set {
            c.c_cflag = .init(newValue.rawValue)
        }
    }

    @inlinable
    public var localMode: LocalMode {
        get {
            LocalMode(rawValue: .init(c.c_lflag))
        }
        set {
            c.c_lflag = .init(newValue.rawValue)
        }
    }

    @inlinable
    public var controlCharacters: [SpecialControlCharacter] {
        get {
            unsafe withUnsafeBytes(of: c.c_cc) {
                unsafe $0.bindMemory(to: cc_t.self).map {
                    SpecialControlCharacter(rawValue: .init($0))
                }
            }
        }
        set {
            unsafe withUnsafeMutableBytes(of: &c.c_cc) {
                let buffer = unsafe $0.bindMemory(to: cc_t.self)
                let count = Int(NCCS)
                precondition(buffer.count == count, "c_cc must contain \(count) values")
                precondition(newValue.count == count, "controlCharacters must contain \(count) values")
                for (index, character) in newValue.enumerated() {
                    unsafe buffer[index] = .init(character.rawValue)
                }
            }
        }
    }
}
