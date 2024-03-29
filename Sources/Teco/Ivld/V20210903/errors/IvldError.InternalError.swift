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

extension TCIvldError {
    public struct InternalError: TCIvldErrorType {
        enum Code: String {
            case dbConnectionError = "InternalError.DBConnectionError"
            case dbOperationError = "InternalError.DBOperationError"
            case innerError = "InternalError.InnerError"
            case internalOverflow = "InternalError.InternalOverflow"
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

        /// 内部DB连接失败。
        ///
        /// 请稍后重试
        public static var dbConnectionError: InternalError {
            InternalError(.dbConnectionError)
        }

        /// 内部DB操作错误。
        ///
        /// 检查操作参数是否正确
        public static var dbOperationError: InternalError {
            InternalError(.dbOperationError)
        }

        /// 内部错误。
        ///
        /// 请稍后重试
        public static var innerError: InternalError {
            InternalError(.innerError)
        }

        /// 自定义人物请求超过限制。
        ///
        /// 请稍后重试
        public static var internalOverflow: InternalError {
            InternalError(.internalOverflow)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asIvldError() -> TCIvldError {
            let code: TCIvldError.Code
            switch self.error {
            case .dbConnectionError:
                code = .internalError_DBConnectionError
            case .dbOperationError:
                code = .internalError_DBOperationError
            case .innerError:
                code = .internalError_InnerError
            case .internalOverflow:
                code = .internalError_InternalOverflow
            case .other:
                code = .internalError
            }
            return TCIvldError(code, context: self.context)
        }
    }
}
