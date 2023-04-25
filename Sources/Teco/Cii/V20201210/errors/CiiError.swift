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

/// Service error type returned by `Cii`.
public protocol TCCiiErrorType: TCServiceErrorType {
    /// Get the service error as ``TCCiiError``.
    ///
    /// - Returns: ``TCCiiError`` that holds the same error code and context.
    func asCiiError() -> TCCiiError
}

public struct TCCiiError: TCCiiErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
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
    public static var authFailure: TCCiiError {
        TCCiiError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCCiiError {
        TCCiiError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCCiiError {
        TCCiiError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCCiiError {
        TCCiiError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCCiiError {
        TCCiiError(.invalidParameterValue)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCCiiError {
        TCCiiError(.limitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCCiiError {
        TCCiiError(.missingParameter)
    }

    public func asCiiError() -> TCCiiError {
        return self
    }
}
