//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCTicError {
    public struct InternalError: TCTicErrorType {
        enum Code: String {
            case cosError = "InternalError.CosError"
            case dbError = "InternalError.DbError"
            case mqError = "InternalError.MqError"
            case system = "InternalError.System"
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

        /// 使用的云存储错误。
        public static var cosError: InternalError {
            InternalError(.cosError)
        }

        /// 数据库操作错误。
        public static var dbError: InternalError {
            InternalError(.dbError)
        }

        /// 使用的消息队列错误。
        public static var mqError: InternalError {
            InternalError(.mqError)
        }

        /// 系统错误。
        public static var system: InternalError {
            InternalError(.system)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asTicError() -> TCTicError {
            let code: TCTicError.Code
            switch self.error {
            case .cosError:
                code = .internalError_CosError
            case .dbError:
                code = .internalError_DbError
            case .mqError:
                code = .internalError_MqError
            case .system:
                code = .internalError_System
            case .other:
                code = .internalError
            }
            return TCTicError(code, context: self.context)
        }
    }
}
