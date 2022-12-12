//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCPrivatednsError {
    public struct ResourceInsufficient: TCPrivatednsErrorType {
        enum Code: String {
            case balance = "ResourceInsufficient.Balance"
            case other = "ResourceInsufficient"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
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
        
        public static var balance: ResourceInsufficient {
            ResourceInsufficient(.balance)
        }
        
        /// 资源不足。
        public static var other: ResourceInsufficient {
            ResourceInsufficient(.other)
        }
        
        public func asPrivatednsError() -> TCPrivatednsError {
            let code: TCPrivatednsError.Code
            switch self.error {
            case .balance: 
                code = .resourceInsufficient_Balance
            case .other: 
                code = .resourceInsufficient
            }
            return TCPrivatednsError(code, context: self.context)
        }
    }
}
