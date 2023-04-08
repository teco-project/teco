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

/// Service error type returned by `Pts`.
public protocol TCPtsErrorType: TCServiceErrorType {
    /// Get the service error as ``TCPtsError``.
    ///
    /// - Returns: ``TCPtsError`` that holds the same error code and context.
    func asPtsError() -> TCPtsError
}

public struct TCPtsError: TCPtsErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_AccessTagFail = "FailedOperation.AccessTagFail"
        case failedOperation_DbQueryFailed = "FailedOperation.DbQueryFailed"
        case failedOperation_DbRecordCreateFailed = "FailedOperation.DbRecordCreateFailed"
        case failedOperation_DbRecordUpdateFailed = "FailedOperation.DbRecordUpdateFailed"
        case failedOperation_JobStatusNotRunning = "FailedOperation.JobStatusNotRunning"
        case failedOperation_NoTasksInJob = "FailedOperation.NoTasksInJob"
        case failedOperation_NotSupportedInEnv = "FailedOperation.NotSupportedInEnv"
        case failedOperation_ResourceNotFound = "FailedOperation.ResourceNotFound"
        case failedOperation_SendRequest = "FailedOperation.SendRequest"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case resourceNotFound = "ResourceNotFound"
    }

    /// Error domains affliated to ``TCPtsError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self]
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

    /// CAM签名/鉴权错误。
    public static var authFailure: TCPtsError {
        TCPtsError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCPtsError {
        TCPtsError(.failedOperation)
    }

    /// 获取标签失败。
    public static var failedOperation_AccessTagFail: TCPtsError {
        TCPtsError(.failedOperation_AccessTagFail)
    }

    /// 数据库查询失败。
    public static var failedOperation_DbQueryFailed: TCPtsError {
        TCPtsError(.failedOperation_DbQueryFailed)
    }

    /// 数据库创建记录失败。
    public static var failedOperation_DbRecordCreateFailed: TCPtsError {
        TCPtsError(.failedOperation_DbRecordCreateFailed)
    }

    /// 数据库记录更新失败。
    public static var failedOperation_DbRecordUpdateFailed: TCPtsError {
        TCPtsError(.failedOperation_DbRecordUpdateFailed)
    }

    /// 任务状态不是运行中。
    public static var failedOperation_JobStatusNotRunning: TCPtsError {
        TCPtsError(.failedOperation_JobStatusNotRunning)
    }

    /// 任务中没有task。
    public static var failedOperation_NoTasksInJob: TCPtsError {
        TCPtsError(.failedOperation_NoTasksInJob)
    }

    /// 当前环境不支持。
    public static var failedOperation_NotSupportedInEnv: TCPtsError {
        TCPtsError(.failedOperation_NotSupportedInEnv)
    }

    /// 资源不存在。
    public static var failedOperation_ResourceNotFound: TCPtsError {
        TCPtsError(.failedOperation_ResourceNotFound)
    }

    /// 请求发送失败。
    ///
    /// 可能的原因：标签服务鉴权失败，等等。
    public static var failedOperation_SendRequest: TCPtsError {
        TCPtsError(.failedOperation_SendRequest)
    }

    /// 内部错误。
    public static var internalError: TCPtsError {
        TCPtsError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCPtsError {
        TCPtsError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCPtsError {
        TCPtsError(.invalidParameterValue)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCPtsError {
        TCPtsError(.limitExceeded)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCPtsError {
        TCPtsError(.resourceNotFound)
    }

    public func asPtsError() -> TCPtsError {
        return self
    }
}
