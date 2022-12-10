//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCAsError {
    public struct MissingParameter: TCErrorType {
        enum Code: String {
            case inScenario = "MissingParameter.InScenario"
            case instanceMarketOptions = "MissingParameter.InstanceMarketOptions"
            case other = "MissingParameter"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 在特定场景下缺少参数。
        public static var inScenario: MissingParameter {
            MissingParameter(.inScenario)
        }
        
        /// 竞价计费类型缺少对应的 InstanceMarketOptions 参数。
        public static var instanceMarketOptions: MissingParameter {
            MissingParameter(.instanceMarketOptions)
        }
        
        /// 缺少参数错误。
        public static var other: MissingParameter {
            MissingParameter(.other)
        }
    }
}

extension TCAsError.MissingParameter: Equatable {
    public static func == (lhs: TCAsError.MissingParameter, rhs: TCAsError.MissingParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAsError.MissingParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAsError.MissingParameter {
    public func toAsError() -> TCAsError {
        guard let code = TCAsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCAsError(code, context: self.context)
    }
}