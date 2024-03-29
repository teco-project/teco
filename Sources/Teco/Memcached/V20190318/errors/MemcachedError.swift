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

/// Service error type returned by `Memcached`.
public protocol TCMemcachedErrorType: TCServiceErrorType {
    /// Get the service error as ``TCMemcachedError``.
    ///
    /// - Returns: ``TCMemcachedError`` that holds the same error code and context.
    func asMemcachedError() -> TCMemcachedError
}

public struct TCMemcachedError: TCMemcachedErrorType {
    enum Code: String {
        case failedOperation_DbOperationFailed = "FailedOperation.DbOperationFailed"
        case failedOperation_SystemError = "FailedOperation.SystemError"
        case internalError_InternalError = "InternalError.InternalError"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case missingParameter_EmptyParam = "MissingParameter.EmptyParam"
        case resourceNotFound_AccountDoesNotExists = "ResourceNotFound.AccountDoesNotExists"
        case resourceNotFound_InstanceNotExists = "ResourceNotFound.InstanceNotExists"
        case unauthorizedOperation_NoCAMAuthed = "UnauthorizedOperation.NoCAMAuthed"
    }

    /// Error domains affliated to ``TCMemcachedError``.
    public static var domains: [TCErrorType.Type] {
        [
            FailedOperation.self,
            InternalError.self,
            InvalidParameter.self,
            MissingParameter.self,
            ResourceNotFound.self,
            UnauthorizedOperation.self
        ]
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

    /// 数据库操作异常
    public static var failedOperation_DbOperationFailed: TCMemcachedError {
        TCMemcachedError(.failedOperation_DbOperationFailed)
    }

    /// 系统内部错误
    public static var failedOperation_SystemError: TCMemcachedError {
        TCMemcachedError(.failedOperation_SystemError)
    }

    /// 内部错误
    public static var internalError_InternalError: TCMemcachedError {
        TCMemcachedError(.internalError_InternalError)
    }

    /// 业务参数错误
    public static var invalidParameter_InvalidParameter: TCMemcachedError {
        TCMemcachedError(.invalidParameter_InvalidParameter)
    }

    /// 参数为空
    public static var missingParameter_EmptyParam: TCMemcachedError {
        TCMemcachedError(.missingParameter_EmptyParam)
    }

    /// 未提供有效的账号
    public static var resourceNotFound_AccountDoesNotExists: TCMemcachedError {
        TCMemcachedError(.resourceNotFound_AccountDoesNotExists)
    }

    /// 请求的实例不存在
    public static var resourceNotFound_InstanceNotExists: TCMemcachedError {
        TCMemcachedError(.resourceNotFound_InstanceNotExists)
    }

    /// Cam鉴权失败
    public static var unauthorizedOperation_NoCAMAuthed: TCMemcachedError {
        TCMemcachedError(.unauthorizedOperation_NoCAMAuthed)
    }

    public func asMemcachedError() -> TCMemcachedError {
        return self
    }
}
