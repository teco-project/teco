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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCTsfError {
    public struct UnsupportedOperation: TCTsfErrorType {
        enum Code: String {
            case gatewayTooManyRequestParameter = "UnsupportedOperation.GatewayTooManyRequestParameter"
            case taskNotSupported = "UnsupportedOperation.TaskNotSupported"
            case unsupportAction = "UnsupportedOperation.UnsupportAction"
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

        /// 批量操作数量超过限制:%s。
        public static var gatewayTooManyRequestParameter: UnsupportedOperation {
            UnsupportedOperation(.gatewayTooManyRequestParameter)
        }

        /// 操作不支持。
        public static var taskNotSupported: UnsupportedOperation {
            UnsupportedOperation(.taskNotSupported)
        }

        /// 不支持的ACTION。。
        public static var unsupportAction: UnsupportedOperation {
            UnsupportedOperation(.unsupportAction)
        }

        public func asTsfError() -> TCTsfError {
            let code: TCTsfError.Code
            switch self.error {
            case .gatewayTooManyRequestParameter:
                code = .unsupportedOperation_GatewayTooManyRequestParameter
            case .taskNotSupported:
                code = .unsupportedOperation_TaskNotSupported
            case .unsupportAction:
                code = .unsupportedOperation_UnsupportAction
            }
            return TCTsfError(code, context: self.context)
        }
    }
}
