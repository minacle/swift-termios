import CTermios
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
#if canImport(System)
import System
#else
import SystemPackage
#endif
import Testing

@testable
import Termios

@Test func actionConstantsMatchCTermiosConstants() {
    #expect(Action.suspendOutput.rawValue == CTermios::TCOOFF)
    #expect(Action.resumeOutput.rawValue == CTermios::TCOON)
    #expect(Action.sendStopCharacter.rawValue == CTermios::TCIOFF)
    #expect(Action.sendStartCharacter.rawValue == CTermios::TCION)
}

@Test func queueSelectorConstantsMatchCTermiosConstants() {
    #expect(QueueSelector.inputQueue.rawValue == CTermios::TCIFLUSH)
    #expect(QueueSelector.outputQueue.rawValue == CTermios::TCOFLUSH)
    #expect(QueueSelector.inputAndOutputQueues.rawValue == CTermios::TCIOFLUSH)
}

@Test func optionalActionsConstantsMatchCTermiosConstants() {
    #expect(OptionalActions.now.rawValue == UInt32(CTermios::TCSANOW))
    #expect(OptionalActions.afterOutputDrains.rawValue == UInt32(CTermios::TCSADRAIN))
    #expect(OptionalActions.afterOutputDrainsAndDiscardInput.rawValue == UInt32(CTermios::TCSAFLUSH))
}

@Test func baudRateConstantsMatchCTermiosConstants() {
    #expect(BaudRate.zero.rawValue == CTermios::speed_t(CTermios::B0))
    #expect(BaudRate.baud50.rawValue == CTermios::speed_t(CTermios::B50))
    #expect(BaudRate.baud75.rawValue == CTermios::speed_t(CTermios::B75))
    #expect(BaudRate.baud110.rawValue == CTermios::speed_t(CTermios::B110))
    #expect(BaudRate.baud134.rawValue == CTermios::speed_t(CTermios::B134))
    #expect(BaudRate.baud150.rawValue == CTermios::speed_t(CTermios::B150))
    #expect(BaudRate.baud200.rawValue == CTermios::speed_t(CTermios::B200))
    #expect(BaudRate.baud300.rawValue == CTermios::speed_t(CTermios::B300))
    #expect(BaudRate.baud600.rawValue == CTermios::speed_t(CTermios::B600))
    #expect(BaudRate.baud1200.rawValue == CTermios::speed_t(CTermios::B1200))
    #expect(BaudRate.baud1800.rawValue == CTermios::speed_t(CTermios::B1800))
    #expect(BaudRate.baud2400.rawValue == CTermios::speed_t(CTermios::B2400))
    #expect(BaudRate.baud4800.rawValue == CTermios::speed_t(CTermios::B4800))
    #expect(BaudRate.baud9600.rawValue == CTermios::speed_t(CTermios::B9600))
    #expect(BaudRate.baud19200.rawValue == CTermios::speed_t(CTermios::B19200))
    #expect(BaudRate.baud38400.rawValue == CTermios::speed_t(CTermios::B38400))
#if !os(Linux)
    #expect(BaudRate.baud7200.rawValue == CTermios::speed_t(CTermios::B7200))
    #expect(BaudRate.baud14400.rawValue == CTermios::speed_t(CTermios::B14400))
    #expect(BaudRate.baud28800.rawValue == CTermios::speed_t(CTermios::B28800))
#endif
    #expect(BaudRate.baud57600.rawValue == CTermios::speed_t(CTermios::B57600))
#if !os(Linux)
    #expect(BaudRate.baud76800.rawValue == CTermios::speed_t(CTermios::B76800))
#endif
    #expect(BaudRate.baud115200.rawValue == CTermios::speed_t(CTermios::B115200))
    #expect(BaudRate.baud230400.rawValue == CTermios::speed_t(CTermios::B230400))
}

@Test func specialControlCharacterConstantsMatchCTermiosConstants() {
    #expect(SpecialControlCharacter.endOfFile.rawValue == CInt(CTermios::VEOF))
    #expect(SpecialControlCharacter.endOfLine.rawValue == CInt(CTermios::VEOL))
    #expect(SpecialControlCharacter.alternateEndOfLine.rawValue == CInt(CTermios::VEOL2))
    #expect(SpecialControlCharacter.erase.rawValue == CInt(CTermios::VERASE))
    #expect(SpecialControlCharacter.wordErase.rawValue == CInt(CTermios::VWERASE))
    #expect(SpecialControlCharacter.kill.rawValue == CInt(CTermios::VKILL))
    #expect(SpecialControlCharacter.reprint.rawValue == CInt(CTermios::VREPRINT))
    #expect(SpecialControlCharacter.interrupt.rawValue == CInt(CTermios::VINTR))
    #expect(SpecialControlCharacter.quit.rawValue == CInt(CTermios::VQUIT))
    #expect(SpecialControlCharacter.suspend.rawValue == CInt(CTermios::VSUSP))
#if !os(Linux)
    #expect(SpecialControlCharacter.delayedSuspend.rawValue == CInt(CTermios::VDSUSP))
#endif
    #expect(SpecialControlCharacter.start.rawValue == CInt(CTermios::VSTART))
    #expect(SpecialControlCharacter.stop.rawValue == CInt(CTermios::VSTOP))
    #expect(SpecialControlCharacter.literalNext.rawValue == CInt(CTermios::VLNEXT))
    #expect(SpecialControlCharacter.discard.rawValue == CInt(CTermios::VDISCARD))
    #expect(SpecialControlCharacter.minimumInputCount.rawValue == CInt(CTermios::VMIN))
    #expect(SpecialControlCharacter.inputTimeout.rawValue == CInt(CTermios::VTIME))
#if !os(Linux)
    #expect(SpecialControlCharacter.status.rawValue == CInt(CTermios::VSTATUS))
#endif
}

@Test func inputModeConstantsMatchCTermiosConstants() {
    #expect(InputMode.ignoreBreak.rawValue == UInt(CTermios::IGNBRK))
    #expect(InputMode.interruptOnBreak.rawValue == UInt(CTermios::BRKINT))
    #expect(InputMode.ignoreParityErrors.rawValue == UInt(CTermios::IGNPAR))
    #expect(InputMode.markParityErrors.rawValue == UInt(CTermios::PARMRK))
    #expect(InputMode.checkInputParity.rawValue == UInt(CTermios::INPCK))
    #expect(InputMode.stripHighBit.rawValue == UInt(CTermios::ISTRIP))
    #expect(InputMode.mapNewlineToCarriageReturn.rawValue == UInt(CTermios::INLCR))
    #expect(InputMode.ignoreCarriageReturn.rawValue == UInt(CTermios::IGNCR))
    #expect(InputMode.mapCarriageReturnToNewline.rawValue == UInt(CTermios::ICRNL))
    #expect(InputMode.outputSoftwareFlowControl.rawValue == UInt(CTermios::IXON))
    #expect(InputMode.inputSoftwareFlowControl.rawValue == UInt(CTermios::IXOFF))
    #expect(InputMode.restartOutputOnAnyCharacter.rawValue == UInt(CTermios::IXANY))
    #expect(InputMode.ringBellOnInputOverflow.rawValue == UInt(CTermios::IMAXBEL))
}

@Test func outputModeConstantsMatchCTermiosConstants() {
    #expect(OutputMode.postprocessOutput.rawValue == UInt(CTermios::OPOST))
    #expect(OutputMode.mapNewlineToCarriageReturnNewline.rawValue == UInt(CTermios::ONLCR))
#if !os(Linux)
    #expect(OutputMode.expandTabs.rawValue == UInt(CTermios::OXTABS))
    #expect(OutputMode.discardEndOfTransmission.rawValue == UInt(CTermios::ONOEOT))
#endif
    #expect(OutputMode.mapCarriageReturnToNewline.rawValue == UInt(CTermios::OCRNL))
    #expect(OutputMode.suppressCarriageReturnAtColumnZero.rawValue == UInt(CTermios::ONOCR))
    #expect(OutputMode.newlinePerformsCarriageReturn.rawValue == UInt(CTermios::ONLRET))
}

@Test func controlModeConstantsMatchCTermiosConstants() {
    #expect(ControlMode.characterSizeMask.rawValue == UInt(CTermios::CSIZE))
    #expect(ControlMode.fiveBitCharacters.rawValue == UInt(CTermios::CS5))
    #expect(ControlMode.sixBitCharacters.rawValue == UInt(CTermios::CS6))
    #expect(ControlMode.sevenBitCharacters.rawValue == UInt(CTermios::CS7))
    #expect(ControlMode.eightBitCharacters.rawValue == UInt(CTermios::CS8))
    #expect(ControlMode.twoStopBits.rawValue == UInt(CTermios::CSTOPB))
    #expect(ControlMode.enableReceiver.rawValue == UInt(CTermios::CREAD))
    #expect(ControlMode.enableParity.rawValue == UInt(CTermios::PARENB))
    #expect(ControlMode.oddParity.rawValue == UInt(CTermios::PARODD))
    #expect(ControlMode.hangUpOnClose.rawValue == UInt(CTermios::HUPCL))
    #expect(ControlMode.ignoreModemStatusLines.rawValue == UInt(CTermios::CLOCAL))
#if !os(Linux)
    #expect(ControlMode.outputHardwareFlowControl.rawValue == UInt(CTermios::CCTS_OFLOW))
#endif
    #expect(ControlMode.hardwareFlowControl.rawValue == UInt(CTermios::CRTSCTS))
#if !os(Linux)
    #expect(ControlMode.inputHardwareFlowControl.rawValue == UInt(CTermios::CRTS_IFLOW))
    #expect(ControlMode.modemFlowControl.rawValue == UInt(CTermios::MDMBUF))
#endif
}

@Test func localModeConstantsMatchCTermiosConstants() {
    #expect(LocalMode.visuallyEraseLineKill.rawValue == UInt(CTermios::ECHOKE))
    #expect(LocalMode.visuallyEraseCharacters.rawValue == UInt(CTermios::ECHOE))
    #expect(LocalMode.echoInput.rawValue == UInt(CTermios::ECHO))
    #expect(LocalMode.echoNewline.rawValue == UInt(CTermios::ECHONL))
    #expect(LocalMode.visiblyEraseCharacters.rawValue == UInt(CTermios::ECHOPRT))
    #expect(LocalMode.echoControlCharacters.rawValue == UInt(CTermios::ECHOCTL))
    #expect(LocalMode.enableSignals.rawValue == UInt(CTermios::ISIG))
    #expect(LocalMode.canonicalInput.rawValue == UInt(CTermios::ICANON))
#if !os(Linux)
    #expect(LocalMode.alternateWordErase.rawValue == UInt(CTermios::ALTWERASE))
#endif
    #expect(LocalMode.extendedInputProcessing.rawValue == UInt(CTermios::IEXTEN))
    #expect(LocalMode.externalProcessing.rawValue == UInt(CTermios::EXTPROC))
    #expect(LocalMode.stopBackgroundOutput.rawValue == UInt(CTermios::TOSTOP))
    #expect(LocalMode.discardOutput.rawValue == UInt(CTermios::FLUSHO))
#if !os(Linux)
    #expect(LocalMode.suppressKernelStatusInfo.rawValue == UInt(CTermios::NOKERNINFO))
#endif
    #expect(LocalMode.reprintPendingInput.rawValue == UInt(CTermios::PENDIN))
    #expect(LocalMode.disableFlushOnSignal.rawValue == UInt(CTermios::NOFLSH))
}

@Test func termiosInitializesWithZeroedFields() {
    let termios = Termios()

    #expect(termios.inputMode.rawValue == 0)
    #expect(termios.outputMode.rawValue == 0)
    #expect(termios.controlMode.rawValue == 0)
    #expect(termios.localMode.rawValue == 0)
    #expect(termios.inputBaudRate.rawValue == 0)
    #expect(termios.outputBaudRate.rawValue == 0)
    #expect(termios.controlCharacters.count == Int(NCCS))
    #expect(controlCharacterRawValues(in: termios) == Array(repeating: 0, count: Int(NCCS)))
}

@Test func modePropertiesRoundTripThroughBackingTermiosFields() {
    var termios = Termios()

    let inputMode: InputMode = [.ignoreBreak, .checkInputParity, .inputSoftwareFlowControl]
    let outputMode: OutputMode = [.postprocessOutput, .mapNewlineToCarriageReturnNewline]
    let controlMode: ControlMode = [.eightBitCharacters, .enableReceiver, .hangUpOnClose]
    let localMode: LocalMode = [.echoInput, .canonicalInput, .extendedInputProcessing]

    termios.inputMode = inputMode
    termios.outputMode = outputMode
    termios.controlMode = controlMode
    termios.localMode = localMode

    #expect(termios.inputMode.rawValue == inputMode.rawValue)
    #expect(termios.outputMode.rawValue == outputMode.rawValue)
    #expect(termios.controlMode.rawValue == controlMode.rawValue)
    #expect(termios.localMode.rawValue == localMode.rawValue)
    #expect(UInt(termios.c.c_iflag) == inputMode.rawValue)
    #expect(UInt(termios.c.c_oflag) == outputMode.rawValue)
    #expect(UInt(termios.c.c_cflag) == controlMode.rawValue)
    #expect(UInt(termios.c.c_lflag) == localMode.rawValue)
}

@Test func controlCharactersRoundTripThroughBackingTermiosField() {
    var termios = Termios()
    let characters = (0..<Int(NCCS)).map {
        SpecialControlCharacter(rawValue: CInt($0 + 1))
    }

    termios.controlCharacters = characters

    #expect(controlCharacterRawValues(in: termios) == characters.map(\.rawValue))
    #expect(controlCharacterRawValues(in: termios.c) == characters.map(\.rawValue))
}

@Test func baudRatesRoundTripThroughTermiosStorage() {
    var termios = Termios()

    termios.setInputBaudRate(.baud9600)
    #expect(termios.inputBaudRate.rawValue == BaudRate.baud9600.rawValue)

    termios.setOutputBaudRate(.baud19200)
    #expect(termios.outputBaudRate.rawValue == BaudRate.baud19200.rawValue)

    termios.setBaudRate(.baud38400)

    #expect(termios.inputBaudRate.rawValue == BaudRate.baud38400.rawValue)
    #expect(termios.outputBaudRate.rawValue == BaudRate.baud38400.rawValue)
}

@Test func makeRawMatchesDarwinCfmakeraw() {
    var termios = Termios()
    termios.inputMode = [.interruptOnBreak, .mapCarriageReturnToNewline, .outputSoftwareFlowControl]
    termios.outputMode = [.postprocessOutput, .mapNewlineToCarriageReturnNewline]
    termios.controlMode = [.sevenBitCharacters, .enableParity]
    termios.localMode = [.echoInput, .canonicalInput, .enableSignals, .extendedInputProcessing]
    termios.controlCharacters = (0..<Int(NCCS)).map {
        SpecialControlCharacter(rawValue: CInt($0 + 1))
    }

    var expected = termios.c
    unsafe cfmakeraw(&expected)

    termios.makeRaw()

    #expect(termios.c.c_iflag == expected.c_iflag)
    #expect(termios.c.c_oflag == expected.c_oflag)
    #expect(termios.c.c_cflag == expected.c_cflag)
    #expect(termios.c.c_lflag == expected.c_lflag)
    #expect(controlCharacterRawValues(in: termios.c) == controlCharacterRawValues(in: expected))
}

@Test func termiosCanReadFromAndApplyToPseudoTerminal() throws {
    try withPseudoTerminal { _, slave in
        var termios = try Termios(readingFrom: slave)
        termios.inputMode.insert(.ignoreBreak)
        termios.inputMode.remove(.mapCarriageReturnToNewline)
        termios.outputMode.insert(.postprocessOutput)
        termios.localMode.insert(.echoInput)
        termios.localMode.remove(.canonicalInput)
        termios.setBaudRate(.baud9600)

        try termios.apply(to: slave, when: .now)

        var reread = Termios()
        try reread.read(from: slave)

        #expect(reread.inputMode.contains(.ignoreBreak))
        #expect(!reread.inputMode.contains(.mapCarriageReturnToNewline))
        #expect(reread.outputMode.contains(.postprocessOutput))
        #expect(reread.localMode.contains(.echoInput))
        #expect(!reread.localMode.contains(.canonicalInput))
        #expect(reread.inputBaudRate.rawValue == BaudRate.baud9600.rawValue)
        #expect(reread.outputBaudRate.rawValue == BaudRate.baud9600.rawValue)
    }
}

@Test func fileDescriptorTermiosOperationsSucceedOnPseudoTerminal() throws {
    try withPseudoTerminal { _, slave in
        try slave.sendBreak(duration: 0)
        try slave.drainOutput()
        try slave.flush(.inputAndOutputQueues)
        try slave.controlFlow(.resumeOutput)
    }
}

@Test func termiosOperationsThrowBadFileDescriptorForInvalidFileDescriptor() {
    let invalidFileDescriptor = FileDescriptor(rawValue: -1)
    let termios = Termios()

    expectBadFileDescriptor {
        var mutableTermios = Termios()
        try mutableTermios.read(from: invalidFileDescriptor)
    }
    expectBadFileDescriptor {
        try termios.apply(to: invalidFileDescriptor, when: .now)
    }
    expectBadFileDescriptor {
        try invalidFileDescriptor.sendBreak(duration: 0)
    }
    expectBadFileDescriptor {
        try invalidFileDescriptor.drainOutput()
    }
    expectBadFileDescriptor {
        try invalidFileDescriptor.flush(.inputAndOutputQueues)
    }
    expectBadFileDescriptor {
        try invalidFileDescriptor.controlFlow(.resumeOutput)
    }
}

private func withPseudoTerminal(
    _ body: (_ master: FileDescriptor, _ slave: FileDescriptor) throws -> Void
) throws {
    var master = CInt(-1)
    var slave = CInt(-1)

    let result = unsafe openpty(&master, &slave, nil, nil, nil)
    #expect(result == 0)

    defer {
        if master >= 0 {
            close(master)
        }
        if slave >= 0 {
            close(slave)
        }
    }

    try body(
        FileDescriptor(rawValue: master),
        FileDescriptor(rawValue: slave)
    )
}

private func expectBadFileDescriptor(_ operation: () throws -> Void) {
    do {
        try operation()
        Issue.record("Expected operation to throw EBADF")
    } catch let error as Errno {
        #expect(error == .init(rawValue: EBADF))
    } catch {
        Issue.record("Expected operation to throw Errno, but it threw \(error)")
    }
}

private func controlCharacterRawValues(in termios: Termios) -> [CInt] {
    termios.controlCharacters.map(\.rawValue)
}

private func controlCharacterRawValues(in cTermios: termios) -> [CInt] {
    var termios = Termios()
    termios.c = cTermios
    return controlCharacterRawValues(in: termios)
}
