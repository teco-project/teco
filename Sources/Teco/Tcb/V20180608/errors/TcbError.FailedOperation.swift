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

extension TCTcbError {
    public struct FailedOperation: TCTcbErrorType {
        enum Code: String {
            case partialFailure = "FailedOperation.PartialFailure"
            case platformError = "FailedOperation.PlatformError"
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

        /// 部分失败（有一部分操作失败）。
        ///
        /// 部分失败，一般是因为权限等问题导致有部分资源操作失败。具体信息关注Message。
        public static var partialFailure: FailedOperation {
            FailedOperation(.partialFailure)
        }

        /// 操作失败，后台依赖平台错误。
        public static var platformError: FailedOperation {
            FailedOperation(.platformError)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asTcbError() -> TCTcbError {
            let code: TCTcbError.Code
            switch self.error {
            case .partialFailure:
                code = .failedOperation_PartialFailure
            case .platformError:
                code = .failedOperation_PlatformError
            case .other:
                code = .failedOperation
            }
            return TCTcbError(code, context: self.context)
        }
    }
}
