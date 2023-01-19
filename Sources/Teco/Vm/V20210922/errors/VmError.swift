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

/// Service error type returned by `Vm`.
public protocol TCVmErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCVmError``.
    ///
    /// - Returns: ``TCVmError`` that holds the same error code and context.
    func asVmError() -> TCVmError
}

public struct TCVmError: TCVmErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_Unauthorized = "UnauthorizedOperation.Unauthorized"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCVmError``.
    public static var domains: [TCErrorType.Type] {
        [UnauthorizedOperation.self]
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
    public static var authFailure: TCVmError {
        TCVmError(.authFailure)
    }

    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCVmError {
        TCVmError(.dryRunOperation)
    }

    /// 操作失败。
    public static var failedOperation: TCVmError {
        TCVmError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCVmError {
        TCVmError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCVmError {
        TCVmError(.invalidParameter)
    }

    /// 参数取值错误。
    ///
    /// 参数值错误
    public static var invalidParameterValue: TCVmError {
        TCVmError(.invalidParameterValue)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCVmError {
        TCVmError(.limitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCVmError {
        TCVmError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCVmError {
        TCVmError(.operationDenied)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCVmError {
        TCVmError(.requestLimitExceeded)
    }

    /// 资源被占用。
    public static var resourceInUse: TCVmError {
        TCVmError(.resourceInUse)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCVmError {
        TCVmError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCVmError {
        TCVmError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCVmError {
        TCVmError(.resourceUnavailable)
    }

    /// 资源售罄。
    public static var resourcesSoldOut: TCVmError {
        TCVmError(.resourcesSoldOut)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCVmError {
        TCVmError(.unauthorizedOperation)
    }

    public static var unauthorizedOperation_Unauthorized: TCVmError {
        TCVmError(.unauthorizedOperation_Unauthorized)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCVmError {
        TCVmError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCVmError {
        TCVmError(.unsupportedOperation)
    }

    public func asVmError() -> TCVmError {
        return self
    }
}
