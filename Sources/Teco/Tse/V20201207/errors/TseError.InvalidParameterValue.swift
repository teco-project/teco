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

extension TCTseError {
    public struct InvalidParameterValue: TCTseErrorType {
        enum Code: String {
            case action = "InvalidParameterValue.Action"
            case badRequestFormat = "InvalidParameterValue.BadRequestFormat"
            case createError = "InvalidParameterValue.CreateError"
            case invalidParameterValue = "InvalidParameterValue.InvalidParameterValue"
            case operationFailed = "InvalidParameterValue.OperationFailed"
            case queryError = "InvalidParameterValue.QueryError"
            case updateError = "InvalidParameterValue.UpdateError"
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

        /// 迁移到新架构的云原生网关
        public static var action: InvalidParameterValue {
            InvalidParameterValue(.action)
        }

        /// 请求格式不正确。
        public static var badRequestFormat: InvalidParameterValue {
            InvalidParameterValue(.badRequestFormat)
        }

        /// 无效请求参数导致创建失败。
        public static var createError: InvalidParameterValue {
            InvalidParameterValue(.createError)
        }

        /// 无效的参数值。
        public static var invalidParameterValue: InvalidParameterValue {
            InvalidParameterValue(.invalidParameterValue)
        }

        /// 无效请求参数导致操作失败。
        public static var operationFailed: InvalidParameterValue {
            InvalidParameterValue(.operationFailed)
        }

        /// 无效请求参数，查询失败。
        public static var queryError: InvalidParameterValue {
            InvalidParameterValue(.queryError)
        }

        /// 无效请求参数导致更新失败。
        public static var updateError: InvalidParameterValue {
            InvalidParameterValue(.updateError)
        }

        public func asTseError() -> TCTseError {
            let code: TCTseError.Code
            switch self.error {
            case .action:
                code = .invalidParameterValue_Action
            case .badRequestFormat:
                code = .invalidParameterValue_BadRequestFormat
            case .createError:
                code = .invalidParameterValue_CreateError
            case .invalidParameterValue:
                code = .invalidParameterValue_InvalidParameterValue
            case .operationFailed:
                code = .invalidParameterValue_OperationFailed
            case .queryError:
                code = .invalidParameterValue_QueryError
            case .updateError:
                code = .invalidParameterValue_UpdateError
            }
            return TCTseError(code, context: self.context)
        }
    }
}
