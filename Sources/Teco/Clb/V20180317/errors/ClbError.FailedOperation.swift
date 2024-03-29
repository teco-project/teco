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

extension TCClbError {
    public struct FailedOperation: TCClbErrorType {
        enum Code: String {
            case invalidLBStatus = "FailedOperation.InvalidLBStatus"
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

        /// LB状态异常。
        public static var invalidLBStatus: FailedOperation {
            FailedOperation(.invalidLBStatus)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asClbError() -> TCClbError {
            let code: TCClbError.Code
            switch self.error {
            case .invalidLBStatus:
                code = .failedOperation_InvalidLBStatus
            case .other:
                code = .failedOperation
            }
            return TCClbError(code, context: self.context)
        }
    }
}
