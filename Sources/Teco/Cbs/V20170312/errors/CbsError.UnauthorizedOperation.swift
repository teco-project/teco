//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension TCCbsError {
    public struct UnauthorizedOperation: TCCbsErrorType {
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

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
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
        ///
        /// 该操作涉及的服务角色或者服务相关角色不存在，请根据控制台提示进行授权后再执行操作。
        public static var roleNotExists: UnauthorizedOperation {
            UnauthorizedOperation(.roleNotExists)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asCbsError() -> TCCbsError {
            let code: TCCbsError.Code
            switch self.error {
            case .mfaExpired:
                code = .unauthorizedOperation_MFAExpired
            case .notCertification:
                code = .unauthorizedOperation_NotCertification
            case .notHavePaymentRight:
                code = .unauthorizedOperation_NotHavePaymentRight
            case .roleNotExists:
                code = .unauthorizedOperation_RoleNotExists
            case .other:
                code = .unauthorizedOperation
            }
            return TCCbsError(code, context: self.context)
        }
    }
}
