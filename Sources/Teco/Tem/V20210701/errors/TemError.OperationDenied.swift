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

extension TCTemError {
    public struct OperationDenied: TCTemErrorType {
        enum Code: String {
            case balanceNotEnough = "OperationDenied.BalanceNotEnough"
            case resourceIsolated = "OperationDenied.ResourceIsolated"
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

        /// 账户余额不足。
        public static var balanceNotEnough: OperationDenied {
            OperationDenied(.balanceNotEnough)
        }

        /// 账号欠费状态下不支持该操作，请冲正后重试。
        ///
        /// 账户欠费，请充值。
        public static var resourceIsolated: OperationDenied {
            OperationDenied(.resourceIsolated)
        }

        public func asTemError() -> TCTemError {
            let code: TCTemError.Code
            switch self.error {
            case .balanceNotEnough:
                code = .operationDenied_BalanceNotEnough
            case .resourceIsolated:
                code = .operationDenied_ResourceIsolated
            }
            return TCTemError(code, context: self.context)
        }
    }
}
