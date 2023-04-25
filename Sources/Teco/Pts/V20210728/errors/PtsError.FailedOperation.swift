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

extension TCPtsError {
    public struct FailedOperation: TCPtsErrorType {
        enum Code: String {
            case accessTagFail = "FailedOperation.AccessTagFail"
            case dbQueryFailed = "FailedOperation.DbQueryFailed"
            case dbRecordCreateFailed = "FailedOperation.DbRecordCreateFailed"
            case dbRecordUpdateFailed = "FailedOperation.DbRecordUpdateFailed"
            case jobStatusNotRunning = "FailedOperation.JobStatusNotRunning"
            case noTasksInJob = "FailedOperation.NoTasksInJob"
            case notSupportedInEnv = "FailedOperation.NotSupportedInEnv"
            case resourceNotFound = "FailedOperation.ResourceNotFound"
            case sendRequest = "FailedOperation.SendRequest"
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

        /// 获取标签失败。
        public static var accessTagFail: FailedOperation {
            FailedOperation(.accessTagFail)
        }

        /// 数据库查询失败。
        public static var dbQueryFailed: FailedOperation {
            FailedOperation(.dbQueryFailed)
        }

        /// 数据库创建记录失败。
        public static var dbRecordCreateFailed: FailedOperation {
            FailedOperation(.dbRecordCreateFailed)
        }

        /// 数据库记录更新失败。
        public static var dbRecordUpdateFailed: FailedOperation {
            FailedOperation(.dbRecordUpdateFailed)
        }

        /// 任务状态不是运行中。
        public static var jobStatusNotRunning: FailedOperation {
            FailedOperation(.jobStatusNotRunning)
        }

        /// 任务中没有task。
        public static var noTasksInJob: FailedOperation {
            FailedOperation(.noTasksInJob)
        }

        /// 当前环境不支持。
        public static var notSupportedInEnv: FailedOperation {
            FailedOperation(.notSupportedInEnv)
        }

        /// 资源不存在。
        public static var resourceNotFound: FailedOperation {
            FailedOperation(.resourceNotFound)
        }

        /// 请求发送失败。
        ///
        /// 可能的原因：标签服务鉴权失败，等等。
        public static var sendRequest: FailedOperation {
            FailedOperation(.sendRequest)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asPtsError() -> TCPtsError {
            let code: TCPtsError.Code
            switch self.error {
            case .accessTagFail:
                code = .failedOperation_AccessTagFail
            case .dbQueryFailed:
                code = .failedOperation_DbQueryFailed
            case .dbRecordCreateFailed:
                code = .failedOperation_DbRecordCreateFailed
            case .dbRecordUpdateFailed:
                code = .failedOperation_DbRecordUpdateFailed
            case .jobStatusNotRunning:
                code = .failedOperation_JobStatusNotRunning
            case .noTasksInJob:
                code = .failedOperation_NoTasksInJob
            case .notSupportedInEnv:
                code = .failedOperation_NotSupportedInEnv
            case .resourceNotFound:
                code = .failedOperation_ResourceNotFound
            case .sendRequest:
                code = .failedOperation_SendRequest
            case .other:
                code = .failedOperation
            }
            return TCPtsError(code, context: self.context)
        }
    }
}
