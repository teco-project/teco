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

extension TCEsError {
    public struct ResourceInsufficient: TCErrorType {
        enum Code: String {
            case balance = "ResourceInsufficient.Balance"
            case hiddenZone = "ResourceInsufficient.HiddenZone"
            case subnet = "ResourceInsufficient.Subnet"
            case other = "ResourceInsufficient"
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
        
        /// 账户余额不足。
        public static var balance: ResourceInsufficient {
            ResourceInsufficient(.balance)
        }
        
        /// 隐藏可用区专用主节点资源不足。
        public static var hiddenZone: ResourceInsufficient {
            ResourceInsufficient(.hiddenZone)
        }
        
        /// 子网剩余ip数量不足。
        public static var subnet: ResourceInsufficient {
            ResourceInsufficient(.subnet)
        }
        
        /// 资源不足。
        public static var other: ResourceInsufficient {
            ResourceInsufficient(.other)
        }
    }
}

extension TCEsError.ResourceInsufficient: Equatable {
    public static func == (lhs: TCEsError.ResourceInsufficient, rhs: TCEsError.ResourceInsufficient) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEsError.ResourceInsufficient: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEsError.ResourceInsufficient {
    public func toEsError() -> TCEsError {
        guard let code = TCEsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCEsError(code, context: self.context)
    }
}