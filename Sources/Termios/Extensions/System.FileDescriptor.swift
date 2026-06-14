#if canImport(System)
public import System
#else
public import SystemPackage
#endif
private import CTermios

#if os(Linux)
private import Glibc
#endif

extension FileDescriptor {

    public func sendBreak(duration: CInt) throws(Errno) {
        guard tcsendbreak(rawValue, duration) == 0
        else {
            throw Errno(rawValue: errno)
        }
    }

    public func drainOutput() throws(Errno) {
        guard tcdrain(rawValue) == 0
        else {
            throw Errno(rawValue: errno)
        }
    }

    public func flush(_ queue: QueueSelector) throws(Errno) {
        guard tcflush(rawValue, queue.rawValue) == 0
        else {
            throw Errno(rawValue: errno)
        }
    }

    public func controlFlow(_ action: Action) throws(Errno) {
        guard tcflow(rawValue, action.rawValue) == 0
        else {
            throw Errno(rawValue: errno)
        }
    }
}
