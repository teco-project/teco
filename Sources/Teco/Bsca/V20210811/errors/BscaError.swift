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

/// Service error type returned by `Bsca`.
public protocol TCBscaErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCBscaError``.
    ///
    /// - Returns: ``TCBscaError`` that holds the same error code and context.
    func asBscaError() -> TCBscaError
}

public struct TCBscaError: TCBscaErrorType {
    enum Code: String {
        case failedOperation_AccountNotEnough = "FailedOperation.AccountNotEnough"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case missingParameter = "MissingParameter"
        case resourceNotFound = "ResourceNotFound"
    }

    /// Error domains affliated to ``TCBscaError``.
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

    /// 账户流量余额不足。
    ///
    /// 请购买流量包。
    public static var failedOperation_AccountNotEnough: TCBscaError {
        TCBscaError(.failedOperation_AccountNotEnough)
    }

    /// 内部错误。
    public static var internalError: TCBscaError {
        TCBscaError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCBscaError {
        TCBscaError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCBscaError {
        TCBscaError(.invalidParameterValue)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCBscaError {
        TCBscaError(.missingParameter)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCBscaError {
        TCBscaError(.resourceNotFound)
    }

    public func asBscaError() -> TCBscaError {
        return self
    }
}
