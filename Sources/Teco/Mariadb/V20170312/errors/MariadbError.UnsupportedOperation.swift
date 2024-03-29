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

extension TCMariadbError {
    public struct UnsupportedOperation: TCMariadbErrorType {
        enum Code: String {
            case dbVersionNotSupported = "UnsupportedOperation.DbVersionNotSupported"
            case invalidOperation = "UnsupportedOperation.InvalidOperation"
            case oldProxyVersion = "UnsupportedOperation.OldProxyVersion"
            case operationNotApplicable = "UnsupportedOperation.OperationNotApplicable"
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

        public static var dbVersionNotSupported: UnsupportedOperation {
            UnsupportedOperation(.dbVersionNotSupported)
        }

        /// 不支持的无效操作。
        public static var invalidOperation: UnsupportedOperation {
            UnsupportedOperation(.invalidOperation)
        }

        /// Proxy软件版本太旧，请联系客服升级到新版本后再试。
        public static var oldProxyVersion: UnsupportedOperation {
            UnsupportedOperation(.oldProxyVersion)
        }

        /// 不适用的操作。
        public static var operationNotApplicable: UnsupportedOperation {
            UnsupportedOperation(.operationNotApplicable)
        }

        public func asMariadbError() -> TCMariadbError {
            let code: TCMariadbError.Code
            switch self.error {
            case .dbVersionNotSupported:
                code = .unsupportedOperation_DbVersionNotSupported
            case .invalidOperation:
                code = .unsupportedOperation_InvalidOperation
            case .oldProxyVersion:
                code = .unsupportedOperation_OldProxyVersion
            case .operationNotApplicable:
                code = .unsupportedOperation_OperationNotApplicable
            }
            return TCMariadbError(code, context: self.context)
        }
    }
}
