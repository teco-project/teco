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

/// Service error type returned by `Tic`.
public protocol TCTicErrorType: TCServiceErrorType {
    /// Get the service error as ``TCTicError``.
    ///
    /// - Returns: ``TCTicError`` that holds the same error code and context.
    func asTicError() -> TCTicError
}

public struct TCTicError: TCTicErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_HttpRequestError = "FailedOperation.HttpRequestError"
        case failedOperation_NotExist = "FailedOperation.NotExist"
        case internalError = "InternalError"
        case internalError_CosError = "InternalError.CosError"
        case internalError_DbError = "InternalError.DbError"
        case internalError_MqError = "InternalError.MqError"
        case internalError_System = "InternalError.System"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case unsupportedOperation_ForbidOp = "UnsupportedOperation.ForbidOp"
    }

    /// Error domains affliated to ``TCTicError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self, UnsupportedOperation.self]
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

    /// 操作失败。
    public static var failedOperation: TCTicError {
        TCTicError(.failedOperation)
    }

    /// HTTP请求错误。
    public static var failedOperation_HttpRequestError: TCTicError {
        TCTicError(.failedOperation_HttpRequestError)
    }

    /// 资源不存在。
    public static var failedOperation_NotExist: TCTicError {
        TCTicError(.failedOperation_NotExist)
    }

    /// 内部错误。
    public static var internalError: TCTicError {
        TCTicError(.internalError)
    }

    /// 使用的云存储错误。
    public static var internalError_CosError: TCTicError {
        TCTicError(.internalError_CosError)
    }

    /// 数据库操作错误。
    public static var internalError_DbError: TCTicError {
        TCTicError(.internalError_DbError)
    }

    /// 使用的消息队列错误。
    public static var internalError_MqError: TCTicError {
        TCTicError(.internalError_MqError)
    }

    /// 系统错误。
    public static var internalError_System: TCTicError {
        TCTicError(.internalError_System)
    }

    /// 参数错误。
    public static var invalidParameter: TCTicError {
        TCTicError(.invalidParameter)
    }

    /// 参数错误。
    public static var invalidParameter_ParamError: TCTicError {
        TCTicError(.invalidParameter_ParamError)
    }

    /// 禁止操作。
    public static var unsupportedOperation_ForbidOp: TCTicError {
        TCTicError(.unsupportedOperation_ForbidOp)
    }

    public func asTicError() -> TCTicError {
        return self
    }
}
