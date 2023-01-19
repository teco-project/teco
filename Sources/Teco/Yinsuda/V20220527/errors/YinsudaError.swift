//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

/// Service error type returned by `Yinsuda`.
public protocol TCYinsudaErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCYinsudaError``.
    ///
    /// - Returns: ``TCYinsudaError`` that holds the same error code and context.
    func asYinsudaError() -> TCYinsudaError
}

public struct TCYinsudaError: TCYinsudaErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
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
    public static var authFailure: TCYinsudaError {
        TCYinsudaError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCYinsudaError {
        TCYinsudaError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCYinsudaError {
        TCYinsudaError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCYinsudaError {
        TCYinsudaError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCYinsudaError {
        TCYinsudaError(.invalidParameterValue)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCYinsudaError {
        TCYinsudaError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCYinsudaError {
        TCYinsudaError(.resourceUnavailable)
    }

    public func asYinsudaError() -> TCYinsudaError {
        return self
    }
}
