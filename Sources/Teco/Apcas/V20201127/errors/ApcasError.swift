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

/// Service error type returned by `Apcas`.
public protocol TCApcasErrorType: TCServiceErrorType {
    /// Get the service error as ``TCApcasError``.
    ///
    /// - Returns: ``TCApcasError`` that holds the same error code and context.
    func asApcasError() -> TCApcasError
}

public struct TCApcasError: TCApcasErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_InternalInvokeFailure = "InternalError.InternalInvokeFailure"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCApcasError``.
    public static var domains: [TCErrorType.Type] {
        [InternalError.self]
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
    public static var authFailure: TCApcasError {
        TCApcasError(.authFailure)
    }

    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCApcasError {
        TCApcasError(.dryRunOperation)
    }

    /// 操作失败。
    public static var failedOperation: TCApcasError {
        TCApcasError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCApcasError {
        TCApcasError(.internalError)
    }

    /// 调用内部服务发生错误。
    public static var internalError_InternalInvokeFailure: TCApcasError {
        TCApcasError(.internalError_InternalInvokeFailure)
    }

    /// 参数错误。
    public static var invalidParameter: TCApcasError {
        TCApcasError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCApcasError {
        TCApcasError(.invalidParameterValue)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCApcasError {
        TCApcasError(.limitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCApcasError {
        TCApcasError(.missingParameter)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCApcasError {
        TCApcasError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCApcasError {
        TCApcasError(.unsupportedOperation)
    }

    public func asApcasError() -> TCApcasError {
        return self
    }
}
