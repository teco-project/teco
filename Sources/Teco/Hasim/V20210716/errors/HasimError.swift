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

/// Service error type returned by `Hasim`.
public protocol TCHasimErrorType: TCServiceErrorType {
    /// Get the service error as ``TCHasimError``.
    ///
    /// - Returns: ``TCHasimError`` that holds the same error code and context.
    func asHasimError() -> TCHasimError
}

public struct TCHasimError: TCHasimErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
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
    public static var authFailure: TCHasimError {
        TCHasimError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCHasimError {
        TCHasimError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCHasimError {
        TCHasimError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCHasimError {
        TCHasimError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCHasimError {
        TCHasimError(.invalidParameterValue)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCHasimError {
        TCHasimError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCHasimError {
        TCHasimError(.operationDenied)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCHasimError {
        TCHasimError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCHasimError {
        TCHasimError(.resourceUnavailable)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCHasimError {
        TCHasimError(.unauthorizedOperation)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCHasimError {
        TCHasimError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCHasimError {
        TCHasimError(.unsupportedOperation)
    }

    public func asHasimError() -> TCHasimError {
        return self
    }
}
