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

extension TCIotexplorerError {
    public struct InternalError: TCIotexplorerErrorType {
        enum Code: String {
            case dbOperationError = "InternalError.DBOperationError"
            case dbOpertaionError = "InternalError.DBOpertaionError"
            case internalLoRaServerError = "InternalError.InternalLoRaServerError"
            case internalRPCError = "InternalError.InternalRPCError"
            case internalServerException = "InternalError.InternalServerException"
            case internalServerExceptionDB = "InternalError.InternalServerExceptionDB"
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

        /// DB操作错误。
        public static var dbOperationError: InternalError {
            InternalError(.dbOperationError)
        }

        /// DB操作错误。
        public static var dbOpertaionError: InternalError {
            InternalError(.dbOpertaionError)
        }

        /// 内部LoRaServer错误。
        ///
        /// 用户无需操作，产品已第一时间获得该告警，正在处理中，请稍后重试。
        public static var internalLoRaServerError: InternalError {
            InternalError(.internalLoRaServerError)
        }

        /// 内部RPC错误。
        public static var internalRPCError: InternalError {
            InternalError(.internalRPCError)
        }

        /// 发生错误。
        public static var internalServerException: InternalError {
            InternalError(.internalServerException)
        }

        /// 内部DB错误。
        public static var internalServerExceptionDB: InternalError {
            InternalError(.internalServerExceptionDB)
        }

        /// 调用超时。
        public static var timeout: InternalError {
            InternalError(.timeout)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asIotexplorerError() -> TCIotexplorerError {
            let code: TCIotexplorerError.Code
            switch self.error {
            case .dbOperationError:
                code = .internalError_DBOperationError
            case .dbOpertaionError:
                code = .internalError_DBOpertaionError
            case .internalLoRaServerError:
                code = .internalError_InternalLoRaServerError
            case .internalRPCError:
                code = .internalError_InternalRPCError
            case .internalServerException:
                code = .internalError_InternalServerException
            case .internalServerExceptionDB:
                code = .internalError_InternalServerExceptionDB
            case .timeout:
                code = .internalError_Timeout
            case .other:
                code = .internalError
            }
            return TCIotexplorerError(code, context: self.context)
        }
    }
}
