# swift-termios

`swift-termios` is a SwiftPM library that provides typed Swift wrappers around
POSIX `termios`.

The package exposes the platform `termios` API through small Swift value types
for terminal attributes, mode flags, baud rates, control characters, queue
selection, and terminal control-flow operations.

## Requirements

- Swift tools version 6.3
- Swift 6 language mode
- macOS 11 or later

The source contains Linux-aware conditionals for constants and imports that
differ between Darwin and Glibc.

## Installation

Add the package to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/minacle/swift-termios", branch: "main"),
]
```

Then add the library product to your target:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "swift-termios", package: "swift-termios"),
    ]
)
```

Import the module as `Termios`:

```swift
import Termios
```

## Usage

Read the current terminal attributes, switch standard input to raw mode, and
restore the original settings when the scope exits:

```swift
import Termios

let terminal = FileDescriptor.standardInput
let original = try Termios(readingFrom: terminal)

var raw = original
raw.makeRaw()
try raw.apply(to: terminal, when: .now)

defer {
    try? original.apply(to: terminal, when: .now)
}

// Perform raw terminal I/O here.
```

You can also edit individual mode sets before applying the attributes:

```swift
var attributes = try Termios(readingFrom: .standardInput)
attributes.localMode.remove(.canonicalInput)
attributes.localMode.remove(.echoInput)
attributes.inputMode.remove(.mapCarriageReturnToNewline)
attributes.setBaudRate(.baud9600)

try attributes.apply(to: .standardInput, when: .now)
```

## API Overview

- `Termios` reads, stores, mutates, converts to raw mode, and applies terminal
  attributes.
- `InputMode`, `OutputMode`, `ControlMode`, and `LocalMode` are typed
  `OptionSet` wrappers for the corresponding `termios` flag fields.
- `BaudRate` wraps `speed_t` values such as `.baud9600`, `.baud115200`, and
  `.baud230400`.
- `SpecialControlCharacter` identifies indices in the terminal control
  character array.
- `OptionalActions`, `QueueSelector`, and `Action` wrap `tcsetattr`, `tcflush`,
  and `tcflow` options.
- `FileDescriptor` is extended with `sendBreak(duration:)`, `drainOutput()`,
  `flush(_:)`, and `controlFlow(_:)`.

Most constants use descriptive Swift names while preserving deprecated aliases
for the original POSIX constant names.

## Testing

Run the test suite with SwiftPM:

```sh
swift test
```

The tests validate the Swift constants against the C `termios` constants,
round-trip mode and baud-rate storage, exercise pseudo-terminal reads and
writes, and check error handling for invalid file descriptors.

## License

This package is released into the public domain under the Unlicense. See
`UNLICENSE` for details.
