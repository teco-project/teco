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

/// Service error type returned by `Pds`.
public protocol TCPdsErrorType: TCServiceErrorType {
    /// Get the service error as ``TCPdsError``.
    ///
    /// - Returns: ``TCPdsError`` that holds the same error code and context.
    func asPdsError() -> TCPdsError
}

public struct TCPdsError: TCPdsErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case internalError_ServiceTimeout = "InternalError.ServiceTimeout"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_ReplayAttack = "LimitExceeded.ReplayAttack"
        case missingParameter = "MissingParameter"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
    }

    /// Error domains affliated to ``TCPdsError``.
    public static var domains: [TCErrorType.Type] {
        [InternalError.self, LimitExceeded.self]
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

    /// 内部错误。
    public static var internalError: TCPdsError {
        TCPdsError(.internalError)
    }

    /// 服务超时。
    public static var internalError_ServiceTimeout: TCPdsError {
        TCPdsError(.internalError_ServiceTimeout)
    }

    /// 参数错误。
    public static var invalidParameter: TCPdsError {
        TCPdsError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCPdsError {
        TCPdsError(.invalidParameterValue)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCPdsError {
        TCPdsError(.limitExceeded)
    }

    /// 重放攻击。
    public static var limitExceeded_ReplayAttack: TCPdsError {
        TCPdsError(.limitExceeded_ReplayAttack)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCPdsError {
        TCPdsError(.missingParameter)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCPdsError {
        TCPdsError(.requestLimitExceeded)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCPdsError {
        TCPdsError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCPdsError {
        TCPdsError(.resourceNotFound)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCPdsError {
        TCPdsError(.unauthorizedOperation)
    }

    public func asPdsError() -> TCPdsError {
        return self
    }
}
