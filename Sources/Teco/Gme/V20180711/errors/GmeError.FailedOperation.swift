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

extension TCGmeError {
    public struct FailedOperation: TCGmeErrorType {
        enum Code: String {
            case loginFailed = "FailedOperation.LoginFailed"
            case userFeeNegative = "FailedOperation.UserFeeNegative"
            case other = "FailedOperation"
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

        /// 登录态过期。
        public static var loginFailed: FailedOperation {
            FailedOperation(.loginFailed)
        }

        /// 欠费不可操作。
        public static var userFeeNegative: FailedOperation {
            FailedOperation(.userFeeNegative)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asGmeError() -> TCGmeError {
            let code: TCGmeError.Code
            switch self.error {
            case .loginFailed:
                code = .failedOperation_LoginFailed
            case .userFeeNegative:
                code = .failedOperation_UserFeeNegative
            case .other:
                code = .failedOperation
            }
            return TCGmeError(code, context: self.context)
        }
    }
}
