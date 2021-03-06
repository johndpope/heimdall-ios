//
//  DailyLimitException.swift
//
//  Generated by Bivrost at 1508513358.26815.
//

struct DailyLimitException {
    struct ChangeDailyLimit: SolidityFunction {
        static let methodId = "81c5e03b"
        typealias Return = Void
        typealias Arguments = (token: Solidity.Address, dailyLimit: Solidity.UInt256)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.token, arguments.dailyLimit))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let token = try Solidity.Address.decode(source: source)
            let dailyLimit = try Solidity.UInt256.decode(source: source)
            // Dynamic Types
            return Arguments(token: token, dailyLimit: dailyLimit)
        }
    }
    struct GnosisSafe: SolidityFunction {
        static let methodId = "a84173ae"
        typealias Return = Solidity.Address
        typealias Arguments = Void
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
    }
    struct Today: SolidityFunction {
        static let methodId = "b74e452b"
        typealias Return = Solidity.UInt256
        typealias Arguments = Void
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.UInt256.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
    }
    struct IsExecutable: SolidityFunction {
        static let methodId = "cde09ca9"
        typealias Return = Solidity.Bool
        typealias Arguments = (owner: Solidity.Address, to: Solidity.Address, value: Solidity.UInt256, data: Solidity.Bytes, operation: Solidity.UInt8)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.owner, arguments.to, arguments.value, arguments.data, arguments.operation))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Bool.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let owner = try Solidity.Address.decode(source: source)
            let to = try Solidity.Address.decode(source: source)
            let value = try Solidity.UInt256.decode(source: source)
            source.consume()
            let operation = try Solidity.UInt8.decode(source: source)
            // Dynamic Types
            let data = try Solidity.Bytes.decode(source: source)
            return Arguments(owner: owner, to: to, value: value, data: data, operation: operation)
        }
    }
    struct DailyLimits: SolidityFunction {
        static let methodId = "d7bffc92"
        typealias Return = (dailyLimit: Solidity.UInt256, spentToday: Solidity.UInt256, lastDay: Solidity.UInt256)
        typealias Arguments = Solidity.Address
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let dailyLimit = try Solidity.UInt256.decode(source: source)
            let spentToday = try Solidity.UInt256.decode(source: source)
            let lastDay = try Solidity.UInt256.decode(source: source)
            // Dynamic Types
            return Return(dailyLimit: dailyLimit, spentToday: spentToday, lastDay: lastDay)
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let param0 = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return param0
        }
    }
}