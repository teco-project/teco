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

extension TCCvmError {
    public struct InvalidAccount: TCCvmErrorType {
        enum Code: String {
            case insufficientBalance = "InvalidAccount.InsufficientBalance"
            case unpaidOrder = "InvalidAccount.UnpaidOrder"
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
        
        /// 账户余额不足。
        public static var insufficientBalance: InvalidAccount {
            InvalidAccount(.insufficientBalance)
        }
        
        /// 账户有未支付订单。
        public static var unpaidOrder: InvalidAccount {
            InvalidAccount(.unpaidOrder)
        }
        
        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .insufficientBalance: 
                code = .invalidAccount_InsufficientBalance
            case .unpaidOrder: 
                code = .invalidAccount_UnpaidOrder
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
