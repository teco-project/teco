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

extension TCTcrError {
    public struct ResourceInsufficient: TCErrorType {
        enum Code: String {
            case errorInstanceNotRunning = "ResourceInsufficient.ErrorInstanceNotRunning"
            case errorVpcDnsStatus = "ResourceInsufficient.ErrorVpcDnsStatus"
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
        
        /// 实例状态异常。
        public static var errorInstanceNotRunning: ResourceInsufficient {
            ResourceInsufficient(.errorInstanceNotRunning)
        }
        
        /// Vpc dsn解析状态异常或未删除。
        public static var errorVpcDnsStatus: ResourceInsufficient {
            ResourceInsufficient(.errorVpcDnsStatus)
        }
    }
}

extension TCTcrError.ResourceInsufficient: Equatable {
    public static func == (lhs: TCTcrError.ResourceInsufficient, rhs: TCTcrError.ResourceInsufficient) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcrError.ResourceInsufficient: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcrError.ResourceInsufficient {
    public func toTcrError() -> TCTcrError {
        guard let code = TCTcrError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTcrError(code, context: self.context)
    }
}