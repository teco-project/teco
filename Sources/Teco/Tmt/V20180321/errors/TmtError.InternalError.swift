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

extension TCTmtError {
    public struct InternalError: TCTmtErrorType {
        enum Code: String {
            case backendTimeout = "InternalError.BackendTimeout"
            case errorGetRoute = "InternalError.ErrorGetRoute"
            case errorUnknown = "InternalError.ErrorUnknown"
            case requestFailed = "InternalError.RequestFailed"
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

        /// 后台服务超时，请稍后重试。
        public static var backendTimeout: InternalError {
            InternalError(.backendTimeout)
        }

        /// 路由获取错误。
        public static var errorGetRoute: InternalError {
            InternalError(.errorGetRoute)
        }

        /// 未知错误。
        public static var errorUnknown: InternalError {
            InternalError(.errorUnknown)
        }

        /// 请求失败。
        public static var requestFailed: InternalError {
            InternalError(.requestFailed)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asTmtError() -> TCTmtError {
            let code: TCTmtError.Code
            switch self.error {
            case .backendTimeout:
                code = .internalError_BackendTimeout
            case .errorGetRoute:
                code = .internalError_ErrorGetRoute
            case .errorUnknown:
                code = .internalError_ErrorUnknown
            case .requestFailed:
                code = .internalError_RequestFailed
            case .other:
                code = .internalError
            }
            return TCTmtError(code, context: self.context)
        }
    }
}
