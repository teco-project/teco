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

extension TCCbsError {
    public struct UnauthorizedOperation: TCErrorType {
        enum Code: String {
            case mfaExpired = "UnauthorizedOperation.MFAExpired"
            case notCertification = "UnauthorizedOperation.NotCertification"
            case notHavePaymentRight = "UnauthorizedOperation.NotHavePaymentRight"
            case roleNotExists = "UnauthorizedOperation.RoleNotExists"
            case other = "UnauthorizedOperation"
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
        
        /// MFA鉴权过期，请重试。
        public static var mfaExpired: UnauthorizedOperation {
            UnauthorizedOperation(.mfaExpired)
        }
        
        /// 账号没有实名认证，支付失败。
        public static var notCertification: UnauthorizedOperation {
            UnauthorizedOperation(.notCertification)
        }
        
        /// 没有支付权限。
        public static var notHavePaymentRight: UnauthorizedOperation {
            UnauthorizedOperation(.notHavePaymentRight)
        }
        
        /// 授权角色不存在。
        public static var roleNotExists: UnauthorizedOperation {
            UnauthorizedOperation(.roleNotExists)
        }
        
        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }
    }
}

extension TCCbsError.UnauthorizedOperation: Equatable {
    public static func == (lhs: TCCbsError.UnauthorizedOperation, rhs: TCCbsError.UnauthorizedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCbsError.UnauthorizedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCbsError.UnauthorizedOperation {
    public func toCbsError() -> TCCbsError {
        guard let code = TCCbsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCbsError(code, context: self.context)
    }
}