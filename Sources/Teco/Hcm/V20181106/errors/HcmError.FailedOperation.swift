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

extension TCHcmError {
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case chargeCountError = "FailedOperation.ChargeCountError"
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
        
        /// 计费次数统计失败。
        public static var chargeCountError: FailedOperation {
            FailedOperation(.chargeCountError)
        }
    }
}

extension TCHcmError.FailedOperation: Equatable {
    public static func == (lhs: TCHcmError.FailedOperation, rhs: TCHcmError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCHcmError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCHcmError.FailedOperation {
    public func toHcmError() -> TCHcmError {
        guard let code = TCHcmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCHcmError(code, context: self.context)
    }
}