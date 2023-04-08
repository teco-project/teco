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

extension TCWavError {
    public struct FailedOperation: TCWavErrorType {
        enum Code: String {
            case openPlatformError = "FailedOperation.OpenPlatformError"
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

        /// 开放平台访问错误。
        ///
        /// 开放平台访问错误，联系开平看详细。
        public static var openPlatformError: FailedOperation {
            FailedOperation(.openPlatformError)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asWavError() -> TCWavError {
            let code: TCWavError.Code
            switch self.error {
            case .openPlatformError:
                code = .failedOperation_OpenPlatformError
            case .other:
                code = .failedOperation
            }
            return TCWavError(code, context: self.context)
        }
    }
}
