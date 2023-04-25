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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCIotError {
    public struct InternalError: TCIotErrorType {
        enum Code: String {
            case iotActionSystemError = "InternalError.IotActionSystemError"
            case iotDbError = "InternalError.IotDbError"
            case iotLogSystemError = "InternalError.IotLogSystemError"
            case iotShadowSystemError = "InternalError.IotShadowSystemError"
            case iotSystemError = "InternalError.IotSystemError"
            case mqiotSystemError = "InternalError.MqiotSystemError"
            case mqruleSystemError = "InternalError.MqruleSystemError"
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

        /// action系统错误。
        public static var iotActionSystemError: InternalError {
            InternalError(.iotActionSystemError)
        }

        /// DB错误。
        public static var iotDbError: InternalError {
            InternalError(.iotDbError)
        }

        /// 日志系统错误。
        public static var iotLogSystemError: InternalError {
            InternalError(.iotLogSystemError)
        }

        /// shadow系统错误。
        public static var iotShadowSystemError: InternalError {
            InternalError(.iotShadowSystemError)
        }

        /// 系统错误。
        public static var iotSystemError: InternalError {
            InternalError(.iotSystemError)
        }

        /// Mqiot系统错误。
        public static var mqiotSystemError: InternalError {
            InternalError(.mqiotSystemError)
        }

        /// rule系统错误。
        public static var mqruleSystemError: InternalError {
            InternalError(.mqruleSystemError)
        }

        public func asIotError() -> TCIotError {
            let code: TCIotError.Code
            switch self.error {
            case .iotActionSystemError:
                code = .internalError_IotActionSystemError
            case .iotDbError:
                code = .internalError_IotDbError
            case .iotLogSystemError:
                code = .internalError_IotLogSystemError
            case .iotShadowSystemError:
                code = .internalError_IotShadowSystemError
            case .iotSystemError:
                code = .internalError_IotSystemError
            case .mqiotSystemError:
                code = .internalError_MqiotSystemError
            case .mqruleSystemError:
                code = .internalError_MqruleSystemError
            }
            return TCIotError(code, context: self.context)
        }
    }
}
