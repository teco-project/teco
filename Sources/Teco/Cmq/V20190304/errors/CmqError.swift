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

/// Service error type returned by `Cmq`.
public protocol TCCmqErrorType: TCServiceErrorType {
    /// Get the service error as ``TCCmqError``.
    ///
    /// - Returns: ``TCCmqError`` that holds the same error code and context.
    func asCmqError() -> TCCmqError
}

public struct TCCmqError: TCCmqErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_TryLater = "FailedOperation.TryLater"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_NoTaskId = "InvalidParameterValue.NoTaskId"
        case limitExceeded = "LimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
    }

    /// Error domains affliated to ``TCCmqError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InvalidParameterValue.self]
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
    public static var failedOperation: TCCmqError {
        TCCmqError(.failedOperation)
    }

    /// 操作进行中，请稍后重试。
    public static var failedOperation_TryLater: TCCmqError {
        TCCmqError(.failedOperation_TryLater)
    }

    /// 参数错误。
    public static var invalidParameter: TCCmqError {
        TCCmqError(.invalidParameter)
    }

    /// 任务Id不存在。
    public static var invalidParameterValue_NoTaskId: TCCmqError {
        TCCmqError(.invalidParameterValue_NoTaskId)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCCmqError {
        TCCmqError(.limitExceeded)
    }

    /// 资源被占用。
    public static var resourceInUse: TCCmqError {
        TCCmqError(.resourceInUse)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCCmqError {
        TCCmqError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCCmqError {
        TCCmqError(.resourceUnavailable)
    }

    /// 资源售罄。
    public static var resourcesSoldOut: TCCmqError {
        TCCmqError(.resourcesSoldOut)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCCmqError {
        TCCmqError(.unauthorizedOperation)
    }

    public func asCmqError() -> TCCmqError {
        return self
    }
}
