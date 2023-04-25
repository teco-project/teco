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

/// Service error type returned by `Tcm`.
public protocol TCTcmErrorType: TCServiceErrorType {
    /// Get the service error as ``TCTcmError``.
    ///
    /// - Returns: ``TCTcmError`` that holds the same error code and context.
    func asTcmError() -> TCTcmError
}

public struct TCTcmError: TCTcmErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_ClusterNoEnoughResource = "FailedOperation.ClusterNoEnoughResource"
        case failedOperation_RBACForbidden = "FailedOperation.RBACForbidden"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case resourceNotFound = "ResourceNotFound"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCTcmError``.
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
    public static var authFailure: TCTcmError {
        TCTcmError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCTcmError {
        TCTcmError(.failedOperation)
    }

    /// 集群资源不足。
    public static var failedOperation_ClusterNoEnoughResource: TCTcmError {
        TCTcmError(.failedOperation_ClusterNoEnoughResource)
    }

    /// Cluster RBAC权限限制。
    public static var failedOperation_RBACForbidden: TCTcmError {
        TCTcmError(.failedOperation_RBACForbidden)
    }

    /// 内部错误。
    public static var internalError: TCTcmError {
        TCTcmError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCTcmError {
        TCTcmError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCTcmError {
        TCTcmError(.invalidParameterValue)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCTcmError {
        TCTcmError(.limitExceeded)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCTcmError {
        TCTcmError(.resourceNotFound)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCTcmError {
        TCTcmError(.unsupportedOperation)
    }

    public func asTcmError() -> TCTcmError {
        return self
    }
}
