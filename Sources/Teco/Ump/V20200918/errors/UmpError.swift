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

/// Service error type returned by `Ump`.
public protocol TCUmpErrorType: TCServiceErrorType {
    /// Get the service error as ``TCUmpError``.
    ///
    /// - Returns: ``TCUmpError`` that holds the same error code and context.
    func asUmpError() -> TCUmpError
}

public struct TCUmpError: TCUmpErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
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
    public static var authFailure: TCUmpError {
        TCUmpError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCUmpError {
        TCUmpError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCUmpError {
        TCUmpError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCUmpError {
        TCUmpError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCUmpError {
        TCUmpError(.invalidParameterValue)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCUmpError {
        TCUmpError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCUmpError {
        TCUmpError(.operationDenied)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCUmpError {
        TCUmpError(.requestLimitExceeded)
    }

    /// 资源被占用。
    public static var resourceInUse: TCUmpError {
        TCUmpError(.resourceInUse)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCUmpError {
        TCUmpError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCUmpError {
        TCUmpError(.resourceUnavailable)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCUmpError {
        TCUmpError(.unauthorizedOperation)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCUmpError {
        TCUmpError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCUmpError {
        TCUmpError(.unsupportedOperation)
    }

    public func asUmpError() -> TCUmpError {
        return self
    }
}
