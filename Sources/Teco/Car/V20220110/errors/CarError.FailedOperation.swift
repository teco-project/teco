//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCCarError {
    public struct FailedOperation: TCCarErrorType {
        enum Code: String {
            case lockTimeout = "FailedOperation.LockTimeout"
            case processTimeout = "FailedOperation.ProcessTimeout"
            case slowDown = "FailedOperation.SlowDown"
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

        /// 未申请并发或申请后超时。
        public static var lockTimeout: FailedOperation {
            FailedOperation(.lockTimeout)
        }

        /// 处理超时。
        public static var processTimeout: FailedOperation {
            FailedOperation(.processTimeout)
        }

        /// 请降低访问频率。
        public static var slowDown: FailedOperation {
            FailedOperation(.slowDown)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asCarError() -> TCCarError {
            let code: TCCarError.Code
            switch self.error {
            case .lockTimeout: 
                code = .failedOperation_LockTimeout
            case .processTimeout: 
                code = .failedOperation_ProcessTimeout
            case .slowDown: 
                code = .failedOperation_SlowDown
            case .other: 
                code = .failedOperation
            }
            return TCCarError(code, context: self.context)
        }
    }
}
