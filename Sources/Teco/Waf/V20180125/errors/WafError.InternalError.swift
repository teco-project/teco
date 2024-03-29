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

extension TCWafError {
    public struct InternalError: TCWafErrorType {
        enum Code: String {
            case asynchronousCallFailed = "InternalError.AsynchronousCallFailed"
            case dbErr = "InternalError.DBErr"
            case unknownErr = "InternalError.UnknownErr"
            case other = "InternalError"
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

        /// 异步调用失败
        public static var asynchronousCallFailed: InternalError {
            InternalError(.asynchronousCallFailed)
        }

        /// DBErr
        public static var dbErr: InternalError {
            InternalError(.dbErr)
        }

        public static var unknownErr: InternalError {
            InternalError(.unknownErr)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asWafError() -> TCWafError {
            let code: TCWafError.Code
            switch self.error {
            case .asynchronousCallFailed:
                code = .internalError_AsynchronousCallFailed
            case .dbErr:
                code = .internalError_DBErr
            case .unknownErr:
                code = .internalError_UnknownErr
            case .other:
                code = .internalError
            }
            return TCWafError(code, context: self.context)
        }
    }
}
