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

extension TCTcbError {
    public struct InternalError: TCTcbErrorType {
        enum Code: String {
            case database = "InternalError.Database"
            case systemFail = "InternalError.SystemFail"
            case timeout = "InternalError.Timeout"
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

        /// 数据库错误。
        public static var database: InternalError {
            InternalError(.database)
        }

        /// 系统失败。
        public static var systemFail: InternalError {
            InternalError(.systemFail)
        }

        /// 服务超时。
        public static var timeout: InternalError {
            InternalError(.timeout)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asTcbError() -> TCTcbError {
            let code: TCTcbError.Code
            switch self.error {
            case .database:
                code = .internalError_Database
            case .systemFail:
                code = .internalError_SystemFail
            case .timeout:
                code = .internalError_Timeout
            case .other:
                code = .internalError
            }
            return TCTcbError(code, context: self.context)
        }
    }
}
