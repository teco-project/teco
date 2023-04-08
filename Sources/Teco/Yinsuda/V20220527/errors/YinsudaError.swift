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

/// Service error type returned by `Yinsuda`.
public protocol TCYinsudaErrorType: TCServiceErrorType {
    /// Get the service error as ``TCYinsudaError``.
    ///
    /// - Returns: ``TCYinsudaError`` that holds the same error code and context.
    func asYinsudaError() -> TCYinsudaError
}

public struct TCYinsudaError: TCYinsudaErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_DuplicateTradeSerialNo = "FailedOperation.DuplicateTradeSerialNo"
        case failedOperation_UserLiveVipTimeExpire = "FailedOperation.UserLiveVipTimeExpire"
        case failedOperation_UserNotLiveVip = "FailedOperation.UserNotLiveVip"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case missingParameter = "MissingParameter"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
    }

    /// Error domains affliated to ``TCYinsudaError``.
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
    public static var authFailure: TCYinsudaError {
        TCYinsudaError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCYinsudaError {
        TCYinsudaError(.failedOperation)
    }

    /// 交易流水号重复
    public static var failedOperation_DuplicateTradeSerialNo: TCYinsudaError {
        TCYinsudaError(.failedOperation_DuplicateTradeSerialNo)
    }

    /// 直播会员已经过期
    public static var failedOperation_UserLiveVipTimeExpire: TCYinsudaError {
        TCYinsudaError(.failedOperation_UserLiveVipTimeExpire)
    }

    /// 非直播会员用户
    public static var failedOperation_UserNotLiveVip: TCYinsudaError {
        TCYinsudaError(.failedOperation_UserNotLiveVip)
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

    /// 缺少参数错误。
    public static var missingParameter: TCYinsudaError {
        TCYinsudaError(.missingParameter)
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
