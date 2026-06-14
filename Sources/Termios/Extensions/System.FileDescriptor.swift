public import CTermios

#if canImport(System)
public import System
#else
public import SystemPackage
#endif

#if os(Linux)
public import Glibc
#endif

extension FileDescriptor {

    @inlinable
    public func sendBreak(duration: CInt) throws(Errno) {
        guard tcsendbreak(rawValue, duration) == 0
        else {
            throw .init(rawValue: errno)
        }
    }

    @inlinable
    public func drainOutput() throws(Errno) {
        guard tcdrain(rawValue) == 0
        else {
            throw .init(rawValue: errno)
        }
    }

    @inlinable
    public func flush(_ queue: QueueSelector) throws(Errno) {
        guard tcflush(rawValue, queue.rawValue) == 0
        else {
            throw .init(rawValue: errno)
        }
    }

    @inlinable
    public func controlFlow(_ action: Action) throws(Errno) {
        guard tcflow(rawValue, action.rawValue) == 0
        else {
            throw .init(rawValue: errno)
        }
    }
}
