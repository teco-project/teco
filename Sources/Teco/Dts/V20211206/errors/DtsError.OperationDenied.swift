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

extension TCDtsError {
    public struct OperationDenied: TCDtsErrorType {
        enum Code: String {
            case bizOperationDeniedError = "OperationDenied.BizOperationDeniedError"
            case jobOperationDeniedError = "OperationDenied.JobOperationDeniedError"
            case notEnoughMoneyError = "OperationDenied.NotEnoughMoneyError"
            case operationDeniedError = "OperationDenied.OperationDeniedError"
            case other = "OperationDenied"
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

        /// 当前操作不满足条件被阻止。
        public static var bizOperationDeniedError: OperationDenied {
            OperationDenied(.bizOperationDeniedError)
        }

        /// 任务操作失败。
        ///
        /// 任务操作失败
        public static var jobOperationDeniedError: OperationDenied {
            OperationDenied(.jobOperationDeniedError)
        }

        /// 用户余额不足。
        public static var notEnoughMoneyError: OperationDenied {
            OperationDenied(.notEnoughMoneyError)
        }

        /// 操作被拒绝。
        public static var operationDeniedError: OperationDenied {
            OperationDenied(.operationDeniedError)
        }

        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }

        public func asDtsError() -> TCDtsError {
            let code: TCDtsError.Code
            switch self.error {
            case .bizOperationDeniedError:
                code = .operationDenied_BizOperationDeniedError
            case .jobOperationDeniedError:
                code = .operationDenied_JobOperationDeniedError
            case .notEnoughMoneyError:
                code = .operationDenied_NotEnoughMoneyError
            case .operationDeniedError:
                code = .operationDenied_OperationDeniedError
            case .other:
                code = .operationDenied
            }
            return TCDtsError(code, context: self.context)
        }
    }
}
