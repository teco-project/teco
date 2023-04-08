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

extension TCMonitorError {
    public struct InternalError: TCMonitorErrorType {
        enum Code: String {
            case callbackFail = "InternalError.CallbackFail"
            case db = "InternalError.Db"
            case dbRecordNotFound = "InternalError.DbRecordNotFound"
            case dependsApi = "InternalError.DependsApi"
            case dependsDb = "InternalError.DependsDb"
            case dependsMq = "InternalError.DependsMq"
            case exeTimeout = "InternalError.ExeTimeout"
            case param = "InternalError.Param"
            case system = "InternalError.System"
            case taskNotFound = "InternalError.TaskNotFound"
            case taskResultFormat = "InternalError.TaskResultFormat"
            case unexpectedInternal = "InternalError.UnexpectedInternal"
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

        /// 回调出错。
        public static var callbackFail: InternalError {
            InternalError(.callbackFail)
        }

        /// InternalError.Db
        public static var db: InternalError {
            InternalError(.db)
        }

        /// InternalError.DbRecordNotFound
        public static var dbRecordNotFound: InternalError {
            InternalError(.dbRecordNotFound)
        }

        /// 依赖的其他api出错。
        public static var dependsApi: InternalError {
            InternalError(.dependsApi)
        }

        /// 依赖的db出错。
        public static var dependsDb: InternalError {
            InternalError(.dependsDb)
        }

        /// 依赖的mq出错。
        public static var dependsMq: InternalError {
            InternalError(.dependsMq)
        }

        /// 执行超时。
        public static var exeTimeout: InternalError {
            InternalError(.exeTimeout)
        }

        /// InternalError.Param
        public static var param: InternalError {
            InternalError(.param)
        }

        /// 系统错误。
        public static var system: InternalError {
            InternalError(.system)
        }

        /// InternalError.TaskNotFound
        public static var taskNotFound: InternalError {
            InternalError(.taskNotFound)
        }

        /// 任务结果解析错误。
        public static var taskResultFormat: InternalError {
            InternalError(.taskResultFormat)
        }

        /// InternalError.UnexpectedInternal
        public static var unexpectedInternal: InternalError {
            InternalError(.unexpectedInternal)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asMonitorError() -> TCMonitorError {
            let code: TCMonitorError.Code
            switch self.error {
            case .callbackFail:
                code = .internalError_CallbackFail
            case .db:
                code = .internalError_Db
            case .dbRecordNotFound:
                code = .internalError_DbRecordNotFound
            case .dependsApi:
                code = .internalError_DependsApi
            case .dependsDb:
                code = .internalError_DependsDb
            case .dependsMq:
                code = .internalError_DependsMq
            case .exeTimeout:
                code = .internalError_ExeTimeout
            case .param:
                code = .internalError_Param
            case .system:
                code = .internalError_System
            case .taskNotFound:
                code = .internalError_TaskNotFound
            case .taskResultFormat:
                code = .internalError_TaskResultFormat
            case .unexpectedInternal:
                code = .internalError_UnexpectedInternal
            case .other:
                code = .internalError
            }
            return TCMonitorError(code, context: self.context)
        }
    }
}
